//
//  ViewController.m
//  MZTableViewDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 15/4/5.
//  Copyright (c) 2015年 com.mocoo. All rights reserved.
//

#import "ViewController.h"
#import "MZTableViewCell.h"
#import "MZTableView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MZTableView *mzTableView = [[MZTableView alloc] initWithFrame:CGRectMake(0,
                                                                             20,
                                                                             [UIScreen mainScreen].bounds.size.width,
                                                                             [UIScreen mainScreen].bounds.size.height - 20)
                                                            style:UITableViewStylePlain];
    mzTableView.minScale = .7;
    mzTableView.delegate = self;
    mzTableView.dataSource = self;
    
    [self.view addSubview:mzTableView];
}
#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    //因为示例图片的长宽比是 16:9 ,所以cell的比例也是 16:9
    return [UIScreen mainScreen].bounds.size.width * 9 / 16;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MZTableViewCell *cell = [[MZTableViewCell alloc] init];
    UIImageView *img = [[UIImageView alloc] init];
    img.frame = CGRectMake(10, 10, [UIScreen mainScreen].bounds.size.width - 20, [UIScreen mainScreen].bounds.size.width * 9 / 16 - 20);
    img.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", (int)indexPath.row]];
    [cell addSubview:img];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
