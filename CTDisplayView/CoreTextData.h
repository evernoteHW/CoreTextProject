//
//  CoreTextData.h
//  CoreTextProject
//
//  Created by WeiHu on 16/8/29.
//  Copyright © 2016年 WeiHu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>
#import <UIKit/UIKit.h>

extern NSString *const CTDisplayViewImagePressedNotification;
extern NSString *const CTDisplayViewLinkPressedNotification;

@interface CoreTextData : NSObject

@property (assign, nonatomic) CTFrameRef ctFrame;               //字符串绘制的坐标
@property (assign, nonatomic) CGFloat height;
@property (strong, nonatomic) NSArray * imageArray;             //图片数组
@property (strong, nonatomic) NSArray * linkArray;              //链接数组
@property (strong, nonatomic) NSAttributedString *content;      //内容

@end

