//
//  NSAttributedStringHelper.m
//  NSAttributedStringDemo
//
//  Created by admin on 16/5/2.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "NSAttributedStringHelper.h"

@implementation NSAttributedStringHelper

/*
 NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:kTestStr attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:Red_Color}];
 _testLabel.attributedText=attStr;
 */

+(NSAttributedString *)getNormalStrWithFont:(CGFloat)kFont
                            foregroundColor:(UIColor *)foregroundColor
                                  normalStr:(NSString *)normalStr
{
    NSDictionary *attributesDic=@{NSFontAttributeName:[UIFont systemFontOfSize:kFont],NSForegroundColorAttributeName:foregroundColor};
    NSAttributedString *attStr =[[NSAttributedString alloc]initWithString:normalStr attributes:attributesDic];
    return  attStr;
}


+(NSAttributedString *)getTwoStringsStrWithLeftFont:(CGFloat)LeftFont
                                leftForegroundColor:(UIColor *)leftForegroundColor
                                         leftString:(NSString *)leftString
                                          rightFont:(CGFloat)righFont
                               rightForegroundColor:(UIColor *)rightForegroundColor
                                        rightString:(NSString *)rightString{
    //左侧的
    NSDictionary *leftDic=@{NSFontAttributeName:[UIFont systemFontOfSize:LeftFont],NSForegroundColorAttributeName:leftForegroundColor};
    NSAttributedString *leftAttStr = [[NSAttributedString alloc] initWithString:leftString attributes:leftDic];

    //右侧的
    NSDictionary *rightDic=@{NSFontAttributeName:[UIFont systemFontOfSize:righFont],NSForegroundColorAttributeName:rightForegroundColor};
    NSAttributedString *rightAttStr = [[NSAttributedString alloc] initWithString:rightString attributes:rightDic];
    
    
    //拼接一下
    NSMutableAttributedString *mAttSting =[[NSMutableAttributedString alloc] initWithAttributedString:leftAttStr];
    [mAttSting appendAttributedString:rightAttStr];
    
    
    //返回
    NSAttributedString *totalAttStr=[[NSAttributedString alloc]initWithAttributedString:mAttSting];
    return totalAttStr;
}

@end
