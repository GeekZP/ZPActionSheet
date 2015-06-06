//
//  ActionSheetView.h
//  ZPActionSheetDemo
//  联系开发者:QQ1397819210
//  Created by 郑鹏 on 15/6/4.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//

#import "VerButton.h"
#import "ActionButton.h"
#import <UIKit/UIKit.h>

typedef enum {
    ShowTypeIsShareStyle = 0,  //9宫格类型的  适合分享按钮
    ShowTypeIsActionSheetStyle  //类似系统的actionsheet的类型
} ShowType;

@interface ActionSheetView : UIView

//点击按钮block回调
@property (nonatomic,copy) void(^btnClick)(NSInteger);

//头部提示文字
@property (nonatomic,copy) NSString *proStr;

//头部提示文字的字体大小
@property (nonatomic,assign) NSInteger proFont;

//取消按钮的颜色
@property (nonatomic,strong) UIColor *cancelBtnColor;

//取消按钮的字体大小
@property (nonatomic,assign) NSInteger cancelBtnFont;

//除了取消按钮其他按钮的颜色
@property (nonatomic,strong) UIColor *otherBtnColor;

//除了取消按钮其他按钮的字体大小
@property (nonatomic,assign) NSInteger otherBtnFont;

//设置弹窗背景蒙板灰度(0~1)
@property (nonatomic,assign) CGFloat duration;

/**
 *  初始化actionView
 *
 *  @param titleArray 标题数组
 *  @param imageArr   图片数组(如果不需要的话传空数组(@[])进来)
 *  @param protitle   最顶部的标题  不需要的话传@""
 *  @param type       两种弹出类型(枚举)
 *
 *  @return wu
 */

- (id)initWithShareHeadOprationWith:(NSArray *)titleArray andImageArry:(NSArray *)imageArr andProTitle:(NSString *)protitle and:(ShowType)type;

@end








