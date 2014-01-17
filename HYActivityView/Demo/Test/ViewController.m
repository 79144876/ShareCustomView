//
//  ViewController.m
//  Test
//
//  Created by crte on 13-11-4.
//  Copyright (c) 2013年 crte. All rights reserved.
//

#import "ViewController.h"
#import "HYActivityView.h"
#import "ActionView.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) HYActivityView *activityView;

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button setTitle:@"press button" forState:UIControlStateNormal];
    [self.button sizeToFit];
    [self.button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view setNeedsUpdateConstraints];
    
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    [self.view addConstraint:constraint];
    
}

- (void)addButtonClicked:(UIButton *)button
{
    ButtonView *bv = [[ButtonView alloc]initWithText:@"新浪微博" image:[UIImage imageNamed:@"share_platform_sina"] handler:^(ButtonView *buttonView){
        NSLog(@"点击新增的新浪微博");
    }];
    [self.activityView addButtonView:bv];
}

- (void)buttonClicked:(UIButton *)button
{
    
    ActionView* actionview=[[ActionView alloc] initWithFrame:CGRectMake(0, [[UIApplication sharedApplication] keyWindow].frame.size.height, self.view.frame.size.width, 150)];
    
    UITextField* text=[[UITextField alloc] initWithFrame:CGRectMake(5, 20, self.view.frame.size.width-10, 35)];
    text.borderStyle=UITextBorderStyleRoundedRect;
    text.text=@"7654321";
    [actionview addSubview:text];
    
    [actionview showInView:self.view];
    
    
//    if (!self.activityView) {
//        self.activityView = [[HYActivityView alloc]initWithTitle:@"分享到" referView:self.view];
//        
//        //横屏会变成一行6个, 竖屏无法一行同时显示6个, 会自动使用默认一行4个的设置.
//        self.activityView.numberOfButtonPerLine = 6;
//        
//        ButtonView *bv = [[ButtonView alloc]initWithText:@"新浪微博" image:[UIImage imageNamed:@"share_platform_sina"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击新浪微博");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"Email" image:[UIImage imageNamed:@"share_platform_email"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击Email");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"印象笔记" image:[UIImage imageNamed:@"share_platform_evernote"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击印象笔记");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"QQ" image:[UIImage imageNamed:@"share_platform_qqfriends"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击QQ");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信" image:[UIImage imageNamed:@"share_platform_wechat"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"share_platform_wechattimeline"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信朋友圈");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"share_platform_wechattimeline"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信朋友圈");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"share_platform_wechattimeline"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信朋友圈");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"share_platform_wechattimeline"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信朋友圈");
//        }];
//        [self.activityView addButtonView:bv];
//        
//        bv = [[ButtonView alloc]initWithText:@"微信朋友圈" image:[UIImage imageNamed:@"share_platform_wechattimeline"] handler:^(ButtonView *buttonView){
//            NSLog(@"点击微信朋友圈");
//        }];
//        [self.activityView addButtonView:bv];
//        
//    }
//    
//    [self.activityView show];
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscape;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
