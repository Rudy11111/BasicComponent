//
//  UIButton+Setup.h
//  BasicComponent
//
//  Created by yangfeng on 2019/12/13.
//  Copyright © 2019 yangfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Setup)
    
/** 带标题的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title;
    
/** 带标题、标题颜色的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor;
    
/** 带标题、标题颜色、标题字体大小的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize;

/** 带标题、标题颜色、标题字体大小、背景颜色的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
              backgroundColor:(UIColor *)backgroundColor;
    
/** 带点击效果的图片按钮 */
+ (UIButton *)buttonWithNormalImage:(UIImage *)normalImage
                     highlightImage:(UIImage *)highlightImage;
    
/** 带有选中效果的图片按钮 */
+ (UIButton *)buttonWithNormalImage:(UIImage *)normalImage
                      selectedImage:(UIImage *)selectedImage;
    
/** 带标题、标题颜色、标题字体大小并且有点击效果的图片按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  normalImage:(UIImage *)normalImage
               highlightImage:(UIImage *)highlightImage;
    
/** 创建带标题的无点击效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets;
    
/** 创建带标题的有点击效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
              highlightImagee:(UIImage *)highlightImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets;
    
/** 创建带标题带选择效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
               selectedImagee:(UIImage *)selectedImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets;
    
/** 创建带有标题，有渐变颜色的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                        frame:(CGRect)frame
                    fromColor:(UIColor *)fromColor
                      toColor:(UIColor *)toColor;
    
@end

NS_ASSUME_NONNULL_END
