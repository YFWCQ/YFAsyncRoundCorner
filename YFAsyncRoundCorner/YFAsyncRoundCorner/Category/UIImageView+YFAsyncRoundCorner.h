//
//  UIImageView+YFAsyncRoundCorner.h
//  QingCheng
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 馍馍帝👿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (YFAsyncRoundCorner)

-(void)yf_setRoundCornerImageWithURL:(nullable NSURL *)url placeholderRoundCornerImage:(nullable UIImage *)placeholder;

-(void)yf_setRoundCornerImageWithURL:(nullable NSURL *)url placeholderImage:(nullable UIImage *)placeholder;

@end
