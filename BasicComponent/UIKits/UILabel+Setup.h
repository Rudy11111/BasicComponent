//
//  UILabel+Setup.h
//  BasicComponent
//
//  Created by yangfeng on 2019/12/13.
//  Copyright © 2019 yangfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Setup)

/** 带单行文本的标签 */
+ (UILabel *)labelWithText:(NSString *)text;

/** 带多行文本的标签 */
+ (UILabel *)labelWithText:(NSString *)text
             numberOfLines:(NSInteger)numberOfLines;

/** 带单行文本、文本颜色的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor;

/** 带多行文本、文本颜色的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
             numberOfLines:(NSInteger)numberOfLines;

/** 带单行文本、文本颜色、文本字体大小的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)fontSize;

/** 带多行文本、文本颜色、文本字体大小的标签 */
+ (UILabel *)labelWithText:(NSString *)text
                 textColor:(UIColor *)textColor
                  fontSize:(CGFloat)fontSize
             numberOfLines:(NSInteger)numberOfLines;

@end

NS_ASSUME_NONNULL_END
