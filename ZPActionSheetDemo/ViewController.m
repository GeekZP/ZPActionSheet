//
//  ViewController.m
//  ZPActionSheetDemo
//  联系开发者:QQ1397819210
//  Created by 郑鹏 on 15/6/4.
//  Copyright (c) 2015年 pzheng. All rights reserved.
//
#import "ActionSheetView.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)push1:(id)sender
{
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友",@"微信朋友圈"];
    NSArray *imageArr = @[@"wechatquan",@"wechat",@"tcentQQ",@"tcentkongjian",@"wechatquan",@"wechat",@"wechatquan",@"wechat",@"tcentQQ"];
    
    ActionSheetView *actionsheet = [[ActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:imageArr andProTitle:@"测试" and:ShowTypeIsShareStyle];
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        NSLog(@"\n点击第几个====%ld\n当前选中的按钮title====%@",btnTag,titlearr[btnTag]);
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
}
- (IBAction)push2:(id)sender
{
    NSArray *titlearr = @[@"微信朋友圈",@"微信好友",@"微信朋友圈",@"微信好友"];
    
    ActionSheetView *actionsheet = [[ActionSheetView alloc] initWithShareHeadOprationWith:titlearr andImageArry:@[] andProTitle:@"" and:ShowTypeIsActionSheetStyle];
    [actionsheet setBtnClick:^(NSInteger btnTag) {
        NSLog(@"\n点击第几行====%ld\n当前选中的按钮title====%@",btnTag,titlearr[btnTag]);
    }];
    [[UIApplication sharedApplication].keyWindow addSubview:actionsheet];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end









