//
//  MZTableViewCell.m
//  MZTableViewDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 15/4/5.
//  Copyright (c) 2015年 com.mocoo. All rights reserved.
//

#import "MZTableViewCell.h"

@implementation MZTableViewCell

-(id)init {
    self           = [super init];
    self.transform = CGAffineTransformMakeScale(1, 1);
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)transformCell:(float) scale {
    self.transform = CGAffineTransformMakeScale(scale, scale);
}

@end
