//
//  BYRWechatShare.m
//  BYRWechatShare
//
//  Created by LeeLom on 2017/7/28.
//  Copyright © 2017年 LeeLom. All rights reserved.
//

#import "BYRWechatShare.h"

@implementation BYRWechatShare

+ (void)shareImageToWechatFriends:(NSString *)filePath
                       thumbImage:(UIImage *)image {
    NSLog(@"%@%@", filePath, [image description]);
}

@end
