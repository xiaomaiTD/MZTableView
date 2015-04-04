//
//  MZTableView.m
//  MZTableView
//
//  Author Andyjicw jichsy@outlook.com
//
//  Created by Brother on 15/4/5.
//  Copyright (c) 2015年 com.mocoo. All rights reserved.
//

#import "MZTableView.h"
#import "MZTableViewCell.h"

@implementation MZTableView

-(void)layoutSubviews{
    [super layoutSubviews];
    
    /**
     *  遍历页面上显示的所有cell
     */
    for(NSIndexPath *indexPath in self.indexPathsForVisibleRows)
    {
        UITableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
        
        if([NSStringFromClass(cell.class) isEqualToString:@"MZTableViewCell"]){
            MZTableViewCell *tmpCell = (MZTableViewCell *)cell;
            double scale =  1;
            
            /**
             *  获取cell相对于屏幕的位置
             */
            CGRect rectInTableView = [self rectForRowAtIndexPath:indexPath];
            CGRect rectInSuperview = [self convertRect:rectInTableView toView:[self superview]];
            
            /**
             *  相对于TableView的位置
             */
            double originY = rectInSuperview.origin.y - self.frame.origin.y;
            
            /**
             *  根据当前高度和缩放比例，计算cell初始化高度
             */
            double cellHeight = fabs(tmpCell.frame.size.height / tmpCell.transform.d);
            
            /**
             *  第一个cell
             */
            if(originY <= 0){
                scale = 1 - fabs(originY) / cellHeight * (1 - _minScale);
                
            }
            /**
             *  最后一个cell
             */
            else if(originY + cellHeight >= self.frame.size.height){
                scale = 1 - fabs(originY + cellHeight - self.frame.size.height) / cellHeight * (1 - _minScale);
            }

            [tmpCell transformCell:scale];
        }
        
    }
}

@end
