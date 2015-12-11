# PayDemo-
支付宝微信支付


支付

//微信支付：1 //注册微信支付[自weiXinRegister]

2。
 //注册监听 - 微信
[NSNotificationCenter defaultCenter]的addObserver：自我选择：@selector（dealWXpayResult :)名：@“WXpayresult”目标：无]


//////// ------------
- （BOOL）申请：（的UIApplication *）应用程序的OpenURL：（NSURL *）网址sourceApplication：（的NSString *）sourceApplication注释：（ID）注释{
//支付宝支付1回[个体经营aLiPayWithApplication：应用的OpenURL：URL sourceApplication：sourceApplication注释：注释]。

//返回友盟;
}

2. //注册监听 - 支付宝[NSNotificationCenter defaultCenter]的addObserver：自我选择：@selector（dealAlipayResult :)名：@“alipayResult”目标：无]

综合3

//支付宝支付

（IBAction为）aliPayAction：（ID）发送{

[自pay_orderId：自generateTradeNO] withPayType：1];

}

//微信支付

（IBAction为）weiXinAction：（ID）发送{

[自pay_orderId：自generateTradeNO] withPayType：2]。

}

（无效）pay_orderId：（的NSString *）为了withPayType：（NSInteger的）payType {

产品型号* P = [[产品型号的alloc]初始化]; p.price = 0.01; // p.p​​rice = [_money的floatValue] 的NSString *体= [NSString的stringWithFormat：@“％@％@％@”，@“2”，@“1”，@“0.01”]; p.body =身体; p.subject = [NSString的stringWithFormat：@“订单支付％@元”，@“0.01”]。p.orderId =秩序; 如果（payType == 1）{[[AliPayManager sharedAliPayManager]薪酬：P]。}如果（payType == 2）{[[WeiXinPayManager sharedWeiXinPayManager] weiXinPay：P]; }

}

监听

- （无效）dealAlipayResult：（NSNotification）通知{NSString的结果= notification.object;

如果（[结果isEqualToString：@“9000”]）{
    //在这里写支付成功之后的回调操作
    的NSLog（@“支付宝支付成功”）;

}其他{
    //在这里写支付失败之后的回调操作
    的NSLog（@“支付宝支付失败”）;
}
} - （无效）dealWXpayResult：（NSNotification）通知{NSString的结果= notification.object; 如果（[结果isEqualToString：@“1”]）{

    //在这里写支付成功之后的回调操作
    的NSLog（@“微信支付成功”）;

}其他{
    //在这里写支付失败之后的回调操作
    的NSLog（@“微信支付失败”）;
}
}
