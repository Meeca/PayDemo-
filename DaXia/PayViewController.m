//
//  PayViewController.m
//  daxia
//
//  Created by 冯洪建 on 15/12/11.
//  Copyright © 2015年 hzy. All rights reserved.
//

#import "PayViewController.h"

#import "AliPayManager.h" //  支付宝
#import "WeiXinPayManager.h"

@interface PayViewController ()

@end

@implementation PayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"支付";
    
    //注册监听-支付宝
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(dealAlipayResult:) name:@"alipayResult" object:nil];
    //注册监听-微信
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(dealWXpayResult:) name:@"WXpayresult" object:nil];
    
    
    // Do any additional setup after loading the view from its nib.
}


//  支付宝支付
- (IBAction)aliPayAction:(id)sender {
    
    
    [self pay_orderId:[self generateTradeNO] withPayType:1];
    
}


//  微信支付
- (IBAction)weiXinAction:(id)sender {
    
    [self pay_orderId:[self generateTradeNO] withPayType:2];
    
    
}


- (void)pay_orderId:(NSString *)order withPayType:(NSInteger )payType {
    
    
    ProductModel *p = [[ProductModel alloc] init];
    p.price = 0.01;
    //     p.price = [_money floatValue];
    NSString * body = [NSString stringWithFormat:@"%@,%@,%@",@"2",@"1",@"0.01"];
    p.body = body;
    p.subject = [NSString stringWithFormat:@"订单支付%@元",@"0.01"];;
    p.orderId = order;
    if (payType == 1) {
        [[AliPayManager sharedAliPayManager ]pay:p];
    }
    if (payType == 2) {
        [[WeiXinPayManager sharedWeiXinPayManager] weiXinPay:p];
    }
    
    
}


-(void)dealAlipayResult:(NSNotification*)notification{
    NSString*result=notification.object;
    
    if([result isEqualToString:@"9000"]){
        //在这里写支付成功之后的回调操作
        NSLog(@"支付宝支付成功");
        
    }else{
        //在这里写支付失败之后的回调操作
        NSLog(@"支付宝支付失败");
    }
    
    
    
}
-(void)dealWXpayResult:(NSNotification*)notification{
    NSString*result=notification.object;
    if([result isEqualToString:@"1"]){
        
        //在这里写支付成功之后的回调操作
        NSLog(@"微信支付成功");
        
    }else{
        //在这里写支付失败之后的回调操作
        NSLog(@"微信支付失败");
    }
    
}



#pragma mark ==============产生随机订单号==============


-(NSString *)generateTradeNO
{
    static int kNumber = 15;
    NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *resultStr = [[NSMutableString alloc] init];
    //    srand(time(0));
    for (int i = 0; i < kNumber; i++)
    {
        unsigned index = rand() % [sourceStr length];
        NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
        [resultStr appendString:oneStr];
    }
    return resultStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
