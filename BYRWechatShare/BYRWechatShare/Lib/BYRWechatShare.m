//
//  BYRWechatShare.m
//  BYRWechatShare
//
//  Created by LeeLom on 2017/7/28.
//  Copyright © 2017年 LeeLom. All rights reserved.
//

#import "BYRWechatShare.h"
#import "WXApi.h"

@implementation BYRWechatShare

+ (void)shareToWechatWithText:(NSString *)content type:(NSUInteger)type {
    SendMessageToWXReq *req = [[SendMessageToWXReq alloc]init];
    req.text = content;
    req.bText = YES;
    req.scene = (int)type;
    [WXApi sendReq:req];
}

+ (void)shareToWechatWithImage:(UIImage *)image thumbImage:(UIImage *)thumbImage type:(NSUInteger)type {
    WXMediaMessage *message = [WXMediaMessage message];
    [message setThumbImage:thumbImage];
    
    WXImageObject *imageObject = [WXImageObject object];
    imageObject.imageData = UIImagePNGRepresentation(image);
    message.mediaObject = imageObject;
    
    [self sendToWechatWithBText:NO message:message scene:type];
}

+ (void)shareToWechatWithMusicTitle:(NSString *)title description:(NSString *)description thumbImage:(UIImage *)thumbImage musicUrl:(NSString *)musicUrl musicDataUrl:(NSString *)musicDataUrl type:(NSUInteger)type {
    WXMediaMessage *message = [WXMediaMessage message];
    message.title = title;
    message.description = description;
    [message setThumbImage:thumbImage];
    
    WXMusicObject *ext = [WXMusicObject object];
    ext.musicUrl = musicUrl;
    ext.musicLowBandUrl = ext.musicUrl;
    ext.musicDataUrl = musicDataUrl;
    ext.musicLowBandDataUrl = ext.musicDataUrl;
    message.mediaObject = ext;
    
    [self sendToWechatWithBText:NO message:message scene:type];
}

+ (void)shareToWechatWithVideoTitle:(NSString *)title description:(NSString *)description thumbImage:(UIImage *)thumbImage videoUrl:(NSString *)videoUrl type:(NSUInteger)type {
    WXMediaMessage *message = [WXMediaMessage message];
    message.title = title;
    message.description = description;
    [message setThumbImage:thumbImage];
    
    WXVideoObject *videoObject = [WXVideoObject object];
    videoObject.videoUrl = videoUrl;
    videoObject.videoLowBandUrl = videoObject.videoUrl; //低分辨了的视频url
    
    [self sendToWechatWithBText:NO message:message scene:type];
}

+ (void)shareToWechatWithWebTitle:(NSString *)title description:(NSString *)description thumbImage:(UIImage *)thumbImage webpageUrl:(NSString *)webpageUrl type:(NSUInteger)type {
    WXMediaMessage *message = [WXMediaMessage message];
    message.title = title;
    message.description = description;
    [message setThumbImage:thumbImage];
    
    WXWebpageObject *webpageObject = [WXWebpageObject object];
    webpageObject.webpageUrl = webpageUrl;
    message.mediaObject = webpageObject;
    
    [self sendToWechatWithBText:NO message:message scene:type];
}

/**
 * 发送请求给微信
 * bText: 发送的消息类型
 * message: 多媒体消息结构体
 * scene: 分享的类型场景
 **/
+ (void)sendToWechatWithBText:(BOOL)bText message:(WXMediaMessage *)message scene:(NSUInteger)scene {
    SendMessageToWXReq *req = [[SendMessageToWXReq alloc]init];
    req.bText = bText;
    req.message = message;
    req.scene = (int)scene;
    
    [WXApi sendReq:req];
}
@end
