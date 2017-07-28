//
//  AppDelegate.m
//  BYRWechatShare
//
//  Created by LeeLom on 2017/7/28.
//  Copyright © 2017年 LeeLom. All rights reserved.
//

#import "AppDelegate.h"
#import "WXApi.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 注册微信
    [WXApi registerApp:@"wx123456778"];
    return YES;
}


@end
