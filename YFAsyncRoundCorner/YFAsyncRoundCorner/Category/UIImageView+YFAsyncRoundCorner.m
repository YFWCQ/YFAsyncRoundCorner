//
//  UIImageView+YFAsyncRoundCorner.m
//  QingCheng
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 馍馍帝👿. All rights reserved.
//

#import "UIImageView+YFAsyncRoundCorner.h"

#import "UIImageView+WebCache.h"

#import "UIImage+YF.h"

@implementation UIImageView (YFAsyncRoundCorner)

-(void)yf_setRoundCornerImageWithURL:(nullable NSURL *)url placeholderRoundCornerImage:(nullable UIImage *)placeholder {
        [self sd_setImageWithURL:url placeholderImage:placeholder completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
            
            [self setImage:[image imageRoundCorner]];
        
        }];
}

-(void)yf_setRoundCornerImageWithURL:(nullable NSURL *)url placeholderImage:(nullable UIImage *)placeholder {
    [self sd_setImageWithURL:url placeholderImage:[placeholder imageRoundCorner] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
        [self setImage:[image imageRoundCorner]];
        
    }];
}


@end
