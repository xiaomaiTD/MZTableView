//
//  ViewController.m
//  MZTableViewDemo
//
//  Author Andyjicw jichsy@outlook.com
//
//  Created by Brother on 15/4/5.
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
    // Do any additional setup after loading the view, typically from a nib.
    
    MZTableView *mzTableView = [[MZTableView alloc] initWithFrame:CGRectMake(0,
                                                                             20,
                                                                             [UIScreen mainScreen].bounds.size.width,
                                                                             [UIScreen mainScreen].bounds.size.height - 20)
                                                            style:UITableViewStylePlain];
    mzTableView.minScale = 0.85;
    mzTableView.delegate = self;
    mzTableView.dataSource = self;
    
    [self.view addSubview:mzTableView];
}
#pragma mark - Table View
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 20 + indexPath.row * 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MZTableViewCell *cell = [[MZTableViewCell alloc] init];
    cell.backgroundColor = [UIColor purpleColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
