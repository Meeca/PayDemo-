//
//  AliPayManager.h
//  TomatoDemo
//
//  Created by 冯洪建 on 15/8/18.
//  Copyright (c) 2015年 hongjian feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PartnerConfig.h"
#import "DataSigner.h"
#import "TomatoSingleton.h"
#import "ProductModel.h"



@interface AliPayManager : NSObject
TomatoSingletonH(AliPayManager)
@property (strong, nonatomic) ProductModel *product;

- (void)pay:(ProductModel *)product;

@end
