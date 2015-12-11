//
//  AppDelegate.m
//  ZPFramework
//
//  Created by XuDong Jin on 14-6-30.
//  Copyright (c) 2014年 XuDong Jin. All rights reserved.
//

#import "AppDelegate.h"
#import <AlipaySDK/AlipaySDK.h>
#import "AppDelegate+AliPay.h"
#import "PayViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    

//微信支付：1
    // 注册微信支付
    [self weiXinRegister];
    
    
    
    PayViewController * vcc = [[PayViewController alloc]initWithNibName:@"PayViewController" bundle:nil];
    UINavigationController * nv = [[UINavigationController alloc]initWithRootViewController: vcc];
    self.window.rootViewController = nv;


    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
    
}
/**
 由于用到支付宝所以这个方法放在 appdelegate 里)
 */
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    
    
//    支付宝支付  1.
    return  [self aLiPayWithApplication:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    
    //  return 友盟;
}




@end
