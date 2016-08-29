//
//  MagnifiterView.h
//  CoreTextProject
//
//  Created by WeiHu on 16/8/29.
//  Copyright © 2016年 WeiHu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MagnifiterView : UIView

@property (weak, nonatomic) UIView *viewToMagnify;
@property (nonatomic, assign) CGPoint touchPoint;

@end
