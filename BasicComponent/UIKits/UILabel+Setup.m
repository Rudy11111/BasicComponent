//
//  UILabel+Setup.m
//  BasicComponent
//
//  Created by yangfeng on 2019/12/13.
//  Copyright © 2019 yangfeng. All rights reserved.
//

#import "UILabel+Setup.h"

@implementation UILabel (Setup)

/** 带单行文本的标签 */
+ (UILabel *)labelWithText:(NSString *)text {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    return label;
}

/** 带多行文本的标签 */
+ (UILabel *)labelWithText:(NSString *)text
             numberOfLines:(NSInteger)numberOfLines {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    return label;
}

/** 带单行文本、文本颜色的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = textColor;
    return label;
}

/** 带多行文本、文本颜色的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
             numberOfLines:(NSInteger)numberOfLines {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = textColor;
    return label;
}

/** 带单行文本、文本颜色、文本字体大小的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)fontSize {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = textColor;
    [label setFont:[UIFont systemFontOfSize:fontSize]];
    return label;
}

/** 带多行文本、文本颜色、文本字体大小的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)fontSize
             numberOfLines:(NSInteger)numberOfLines {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = textColor;
    [label setFont:[UIFont systemFontOfSize:fontSize]];
    label.numberOfLines = numberOfLines;
    return label;
}

@end
