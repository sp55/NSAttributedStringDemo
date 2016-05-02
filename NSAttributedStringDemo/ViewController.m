//
//  ViewController.m
//  NSAttributedStringDemo
//
//  Created by admin on 16/5/2.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "NSAttributedStringHelper.h"



//测试语句
#define kTestStr  @"有花堪折直须折，莫待无花空折。"

@interface ViewController ()
@property(strong,nonatomic)UILabel *testLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=Black_Color;
    
    _testLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 100, kScreenWidth, 80)];
    _testLabel.font=kFont18;
    _testLabel.numberOfLines=0;
//    _testLabel.attributedText=[NSAttributedStringHelper getNormalStrWithFont:18 foregroundColor:Blue_Color normalStr:kTestStr];
    _testLabel.attributedText =[NSAttributedStringHelper getTwoStringsStrWithLeftFont:50 leftForegroundColor:Red_Color leftString:@"100" rightFont:16 rightForegroundColor:Black_Color rightString:@"%"];
    _testLabel.backgroundColor=White_Color;
    [self.view addSubview:_testLabel];
}


@end
