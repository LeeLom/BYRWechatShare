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
 * 分享文字
 * content: 需要分享的文字内容
 * type: 0:分享给微信好友；1:分享到朋友圈
 **/
+ (void)shareToWechatWithText:(NSString *)content
                         type:(NSUInteger)type;

/**
 * 分享图片
 * image: 需要分享的图片
 * thumbImage: 缩略图
 * type: 0:分享给微信好友；1:分享到朋友圈
 **/
+ (void)shareToWechatWithImage:(UIImage *)image
                    thumbImage:(UIImage *)thumbImage
                          type:(NSUInteger)type;

/**
 * 分享音乐
 * title: 音乐标题
 * description: 音乐描述
 * thumbImage: 缩略图
 * musicUrl: 音乐url
 * musicDataUrl: 音乐数据url
 * type: 0:分享给微信好友；1:分享到朋友圈
 **/
+ (void)shareToWechatWithMusicTitle:(NSString *)title
                        description:(NSString *)description
                         thumbImage:(UIImage *)thumbImage
                           musicUrl:(NSString *)musicUrl
                       musicDataUrl:(NSString *)musicDataUrl
                               type:(NSUInteger)type;

/**
 * 分享视频
 * title: 视频标题
 * description: 视频描述
 * thumbImage: 缩略图
 * videoUrl: 视频url
 * type: 0:分享给微信好友；1:分享到朋友圈
 **/
+ (void)shareToWechatWithVideoTitle:(NSString *)title
                       description:(NSString *)description
                        thumbImage:(UIImage *)thumbImage
                          videoUrl:(NSString *)videoUrl
                              type:(NSUInteger)type;

/**
 * 分享视频
 * title: 网页标题
 * description: 网页描述
 * thumbImage: 缩略图
 * webpageUrl: 网页url
 * type: 0:分享给微信好友；1:分享到朋友圈
 **/
+ (void)shareToWechatWithWebTitle:(NSString *)title
                      description:(NSString *)description
                       thumbImage:(UIImage *)thumbImage
                       webpageUrl:(NSString *)webpageUrl
                             type:(NSUInteger)type;

@end
