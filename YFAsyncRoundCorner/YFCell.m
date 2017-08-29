//
//  YFCell.m
//  YFAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

#import "YFCell.h"

@implementation YFCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.headImageView];
    }
    return self;
}

- (UIImageView *)headImageView {
    if (_headImageView == nil) {
        
        _headImageView = [[UIImageView alloc] initWithFrame:CGRectMake(19.0, 14, 48, 48)];
        _headImageView.backgroundColor = [UIColor whiteColor];
        
        //        _headImageView.clipsToBounds = YES;
        //        _headImageView.layer.cornerRadius = 23.5;
    }
    return _headImageView;
}

@end
