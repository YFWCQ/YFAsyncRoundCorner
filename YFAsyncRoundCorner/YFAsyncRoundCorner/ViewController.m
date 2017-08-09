//
//  ViewController.m
//  YFAsyncRoundCorner
//
//  Created by FYWCQ on 2017/8/6.
//  Copyright © 2017年 YFWCQ. All rights reserved.
//

#import "ViewController.h"

#import "YFCell.h"

#import "UIImageView+YFAsyncRoundCorner.h"

static NSString *cellIdentifier = @"cellIdentifier";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 76;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YFCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[YFCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell.headImageView yf_setRoundCornerImageWithURL:[NSURL URLWithString:@"http://zoneke-img.b0.upaiyun.com/76e8550438153b35489914e1afe20392.jpg!120x120"] placeholderImage:[UIImage imageNamed:@"defaultImage"]];
    return cell;
}


@end
