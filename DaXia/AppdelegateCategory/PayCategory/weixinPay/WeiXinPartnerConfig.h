//
//  WeiXinPartnerConfig.h
//  TomatoDemo
//
//  Created by 冯洪建 on 15/8/18.
//  Copyright (c) 2015年 hongjian feng. All rights reserved.
//

#ifndef TomatoDemo_WeiXinPartnerConfig_h
#define TomatoDemo_WeiXinPartnerConfig_h


//===================== 微信账号帐户资料=======================

#import "payRequsestHandler.h"         //导入微信支付类
#import "WXApi.h"

#define APP_ID          @"wx99ef81156e2f6d17"               //APPID
#define APP_SECRET      @"SHkh9sfagcx584asdfKJLSDHF5458dss" //appsecret
//商户号，填写商户对应参数
#define MCH_ID          @"1260314201"
//商户API密钥，填写相应参数
#define PARTNER_ID      @"SHkh9sfagcx584asdfKJLSDHF5458dss"

//支付结果回调页面
#define NOTIFY_URL      @"http://wxpay.weixin.qq.com/pub_v2/php"
//获取服务器端支付数据地址（商户自定义）
#define SP_URL          @"http://wxpay.weixin.qq.com/pub_v2/app/app_p"


#endif
