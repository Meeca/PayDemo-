//
//  WeiXinPayManager.m
//  TomatoDemo
//
//  Created by 冯洪建 on 15/8/18.
//  Copyright (c) 2015年 hongjian feng. All rights reserved.
//

#import "WeiXinPayManager.h"
#import "WeiXinPartnerConfig.h"

@implementation WeiXinPayManager

TomatoSingletonM(WeiXinPayManager)



/*!
 *  @author hongjian feng, 15-08-18 17:08:30
 *
 *   针对单个个商户的微信支付
 *
 *  @param seller  商户号（收款账号）
 */
- (void)weiXinPay:(ProductModel *)product{
    [self weiXinPay:product withSeller:MCH_ID];
    
    
}

/*!
 *  @author hongjian feng, 15-08-18 17:08:59
 *
 *  针对多个商户的微信支付
 *
 *  @param product 商品实体
 *  @param seller  商户号（收款账号）
 */
- (void)weiXinPay:(ProductModel *)product withSeller:(NSString *)seller{

    //微信支付的金额单位是分转化成我们比较常用的'元'
    NSString*realPrice=[NSString stringWithFormat:@"%.f",product.price *100];
    //创建支付签名对象
    payRequsestHandler *req = [payRequsestHandler alloc];
    //初始化支付签名对象
    [req init:APP_ID mch_id:seller];
    //设置密钥
    [req setKey:PARTNER_ID];
    
    //获取到实际调起微信支付的参数后，在app端调起支付
    NSMutableDictionary *dict = [req sendPay_demo:product.orderId
                                            title:product.subject
                                            price:realPrice];
    
    if(dict == nil){
        //错误提示
        NSString *debug = [req getDebugifo];
        
        [WeiXinPayManager alert:@"提示信息" msg:debug];
        
        NSLog(@"%@\n\n",debug);
    }else{
        NSLog(@"%@\n\n",[req getDebugifo]);
        
        NSMutableString *stamp  = [dict objectForKey:@"timestamp"];
        
        //调起微信支付
        PayReq* req             = [[PayReq alloc] init];
        req.openID              = [dict objectForKey:@"appid"];
        req.partnerId           = [dict objectForKey:@"partnerid"];
        req.prepayId            = [dict objectForKey:@"prepayid"];
        req.nonceStr            = [dict objectForKey:@"noncestr"];
        req.timeStamp           = stamp.intValue;
        req.package             = [dict objectForKey:@"package"];
        req.sign                = [dict objectForKey:@"sign"];
        
        BOOL status = [WXApi sendReq:req];
        NSLog(@"%d",status);
    }
}
//客户端提示信息
+(void)alert:(NSString *)title msg:(NSString *)msg
{
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alter show];
}


@end
