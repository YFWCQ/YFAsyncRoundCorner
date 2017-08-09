//
//  UIImage+YF.h
//  QingCheng
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 馍馍帝👿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YF)


/**
 给图片 添加圆角

 @return image
 */
- (UIImage *)imageRoundCorner;


/**
 给图片 添加圆角

 @param fillColor 因为被裁剪掉的部分的颜色
 @return image
 */
- (UIImage *)imageRoundCornerWithFillColor:(UIColor *)fillColor;

@end
