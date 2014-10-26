//
//  HomeViewController.m
//  Trace
//
//  Created by Kabir Gupta on 10/25/14.
//  Copyright (c) 2014 Trace-App. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) IBOutlet UIView *headerView;

@end


@implementation HomeViewController

- (UIView *)headerView {
    if(!_headerView) {
        [[NSBundle mainBundle] loadNibNamed:@"HomeViewHeader" owner:self options:nil];
    }
    return _headerView;
}

#pragma mark - View life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    UIView *header = self.headerView;
    [self.tableView setTableHeaderView:header];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
} //end function numberOfSectionInTableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 5;
} //end function numberOfRowsInSection

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = @"test";
    return cell;
} //end function cellForRowAtIndexPath

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Friends Around You";
}

@end