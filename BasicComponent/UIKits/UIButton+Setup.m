//
//  UIButton+Setup.m
//  BasicComponent
//
//  Created by yangfeng on 2019/12/13.
//  Copyright © 2019 yangfeng. All rights reserved.
//

#import "UIButton+Setup.h"

@implementation UIButton (Setup)

/** 带标题的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

/** 带标题、标题颜色的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    return button;
}

/** 带标题、标题颜色、标题字体大小的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    return button;
}

/** 带标题、标题颜色、标题字体大小、背景颜色的按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
              backgroundColor:(UIColor *)backgroundColor {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setBackgroundColor:backgroundColor];
    return button;
}

/** 带点击效果的图片按钮 */
+ (UIButton *)buttonWithNormalImage:(UIImage *)normalImage
                     highlightImage:(UIImage *)highlightImage {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:highlightImage forState:UIControlStateHighlighted];
    return button;
}

/** 带有选中效果的图片按钮 */
+ (UIButton *)buttonWithNormalImage:(UIImage *)normalImage
                      selectedImage:(UIImage *)selectedImage {
    UIButton *button = [[UIButton alloc] init];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:normalImage forState:UIControlStateHighlighted];
    [button setImage:selectedImage forState:UIControlStateSelected];
    return button;
}

/** 带标题、标题颜色、标题字体大小并且有点击效果的图片按钮 */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  normalImage:(UIImage *)normalImage
               highlightImage:(UIImage *)highlightImage {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:highlightImage forState:UIControlStateHighlighted];
    return button;
}


/** 创建带标题的无点击效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:normalImage forState:UIControlStateHighlighted];
    [button setTitleEdgeInsets:titleEdgeInsets];
    [button setImageEdgeInsets:imageEdgeInsets];
    return button;
}


/** 创建带标题的有点击效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
              highlightImagee:(UIImage *)highlightImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:highlightImage forState:UIControlStateHighlighted];
    [button setTitleEdgeInsets:titleEdgeInsets];
    [button setImageEdgeInsets:imageEdgeInsets];
    return button;
}

/** 创建带标题带选择效果,图片和标题有偏移的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                  NormalImage:(UIImage *)normalImage
               selectedImagee:(UIImage *)selectedImage
              titleEdgeInsets:(UIEdgeInsets)titleEdgeInsets
              imageEdgeInsets:(UIEdgeInsets)imageEdgeInsets {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    [button setImage:normalImage forState:UIControlStateNormal];
    [button setImage:selectedImage forState:UIControlStateSelected];
    [button setTitleEdgeInsets:titleEdgeInsets];
    [button setImageEdgeInsets:imageEdgeInsets];
    return button;
}

/** 创建带有标题，有渐变颜色的Button */
+ (UIButton *)buttonWithTitle:(NSString *)title
                   titleColor:(UIColor *)titleColor
                     fontSize:(CGFloat)fontSize
                        frame:(CGRect)frame
                    fromColor:(UIColor *)fromColor
                      toColor:(UIColor *)toColor {
    UIButton *button = [[UIButton alloc] init];
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    gradientLayer.locations = @[@(0), @(1.0)]; //渐变点
    [gradientLayer setColors:@[(id)[fromColor CGColor], (id)[toColor CGColor]]]; //渐变数组
    [button.layer addSublayer:gradientLayer];
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:fontSize]];
    
    return button;
}

@end
