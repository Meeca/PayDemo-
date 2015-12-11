//
//  PartnerConfig.h
//  TomatoDemo
//
//  Created by 冯洪建 on 15/8/18.
//  Copyright (c) 2015年 hongjian feng. All rights reserved.
//

#ifndef MQPDemo_PartnerConfig_h
#define MQPDemo_PartnerConfig_h

/**
 *  @Author 冯洪建, 15-01-16 13:01:01
 *
 *  需要替换的内容开始
 */

//合作身份者id，以2088开头的16位纯数字
 #define PartnerID @"2088021100619473"  //


//收款支付宝账号
 #define SellerID  @"giftedroy310@sina.com"  //


//回调url
#define NotifyURL [NSString stringWithFormat:@"http://bird.youkesdk.com/api.php/Alipay/index"]



//应用注册scheme,在xxx-Info.plist定义 1> URL types --- 2>  URL Schemes
#define schemeUrl @"qingmanhua"




//商户私钥，自助生成
#define PartnerPrivKey @"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAMwP7ZPMkciLr1ap1wes0RRebboaRhyXXR1WI4RLeYSJibpSEQC/P8g/S5TTvjl4CoEBYPf9fFPMn3h9QEq6zwl6LpqgsK6WgLME1A22ARPWcEcjeNZvQ3lLv3wwmbohqbMxenOmxNIL3VvYzet6R0o4yT+dE1RIrDFmgD2VrIapAgMBAAECgYBAaO6mbjW9xUls42L6CzRbZ4re6RgkQiqj7eJ8CY6rpPYSF4FCaRtqy3/B1CwA28EFAzhmTl6F3NqhH3fBnsFmPh3S2O62KV2215Uvhpq3cm1T85vWHCAeOPh0mdo1eDu9eyyTEHO/yYpFh4XedDTvN8qreOaAWrmUs+qGuvAhAQJBAOZ6A9eroTlJM7fCDkWiWumPwVKYm94bxNrB7ZT8tSV+fRpRm538MbAjUr02e0EqtnYdbo0jVGRK9PvvxmwZF1ECQQDiqRFeJnPbctkB7QGLni7y6B3Zl0QlaTdvZeNTrUO5M8dXzv6iGze4Ps/Jc0cC/RnaQqJDa4Q4gmjTa1S3MNPZAkEA3rcVs3l0yIjGY1IwvHWRaJWz+P7j0BQBfGteDFTPL7Y1ahNmT5p+4Xig4ZseK/D8dNMoG1cCnBAbAMHJengcoQJAC/IZJjsklAZDhaR2FmOp2cd9+z/LqaUX9NkL2BcjoJkoAmq4ZNbGYwF8dgOLVI7+U9B7OM5r04ab+7iGaHk8UQJAD3wMeuUFphfsHTUyPWSFKGw1mVlkSlRRIHQdgCj2Cm7PesQK9cm9A3b4UBg7AIvOGEtroIBapwdCxr2nbndYgg=="


/**
 *  @Author 冯洪建, 15-01-16 13:01:14
 *
 *  需要替换的内容结束
 */





//支付宝公钥
#define AlipayPubKey   @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDWp72N9KKUOZVaoMNy37XXYdyuXdmZWdBWpAXhUbUQdqtHLHPOfDsDdTHKRK62NO5ZcEutR/AyAsPAbqNkNYp28uT15r3L8ltXUSLlDDPE+gR+6Kl188HJtOTyjxti4Xgrk4wmQzFbUmU5sefbrVFC+QADBkl2HiQVAAfNQMP0KQIDAQAB"


#endif
