//
//  BYRWechatShare.h
//  BYRWechatShare
//
//  Created by LeeLom on 2017/7/28.
//  Copyright © 2017年 LeeLom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BYRWechatShare : NSObject

/**
 * 分享图片到微信好友
 **/
+ (void)shareImageToWechatFriends:(NSString *)filePath
                       thumbImage:(UIImage *)image;

@end
