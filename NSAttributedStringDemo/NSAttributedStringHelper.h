//
//  NSAttributedStringHelper.h
//  NSAttributedStringDemo
//
//  Created by admin on 16/5/2.
//  Copyright © 2016年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/09f54730feaa


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//字体大小
#define kFont18  [UIFont systemFontOfSize:18]
#define kFont14  [UIFont systemFontOfSize:14]
#define kFont12  [UIFont systemFontOfSize:12]
#define kFont10  [UIFont systemFontOfSize:10]

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#define kScale ([UIScreen mainScreen].bounds.size.width == 320? 0.8:([UIScreen mainScreen].bounds.size.width == 414) ? 1.104:1)


//常用颜色
#define Clear_Color  [UIColor clearColor]
#define Green_Color    [UIColor greenColor]
#define Red_Color    [UIColor redColor]
#define White_Color  [UIColor whiteColor]
#define Black_Color  [UIColor blackColor]
#define Yellow_Color [UIColor yellowColor]
#define Blue_Color [UIColor blueColor]
#define Cyan_Color    [UIColor cyanColor]
#define Orange_Color    [UIColor orangeColor]
#define LightGray_Color    [UIColor lightGrayColor]



//富文本辅助类
@interface NSAttributedStringHelper : NSObject
//返回类型为NSAttributedString

//根据字体大小 颜色 和文本 返回  单条数据   一个颜色的字符串
+(NSAttributedString *)getNormalStrWithFont:(CGFloat)kFont
                            foregroundColor:(UIColor *)foregroundColor
                                  normalStr:(NSString *)normalStr;

//根据字体大小 颜色 和文本 返回  两天数据拼接一下 100%
+(NSAttributedString *)getTwoStringsStrWithLeftFont:(CGFloat)LeftFont
                                leftForegroundColor:(UIColor *)leftForegroundColor
                                         leftString:(NSString *)leftString
                                          rightFont:(CGFloat)righFont
                               rightForegroundColor:(UIColor *)rightForegroundColor
                                        rightString:(NSString *)rightString;



@end
