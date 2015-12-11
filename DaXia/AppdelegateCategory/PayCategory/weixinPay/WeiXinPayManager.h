//
//  WeiXinPayManager.h
//  TomatoDemo
//
//  Created by 冯洪建 on 15/8/18.
//  Copyright (c) 2015年 hongjian feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductModel.h"
#import "TomatoSingleton.h"

@interface WeiXinPayManager : NSObject

TomatoSingletonH(WeiXinPayManager)


/*!
 *  @author hongjian feng, 15-08-18 17:08:30
 *
 *   针对单个个商户的微信支付
*/


- (void)weiXinPay:(ProductModel *)product;
/*!
 *  @author hongjian feng, 15-08-18 17:08:59
 *
 *  针对多个商户的微信支付
 *
 *  @param product 商品实体
 *  @param seller  商户号（收款账号）
 */
- (void)weiXinPay:(ProductModel *)product withSeller:(NSString *)seller;


@end
