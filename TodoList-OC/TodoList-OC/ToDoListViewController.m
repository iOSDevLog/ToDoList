//
//  ToDoListViewController.m
//  TodoList-OC
//
//  Created by iosdevlog on 15/12/2.
//  Copyright © 2015年 iosdevlog. All rights reserved.
//

#import "ToDoListViewController.h"

@interface ToDoListViewController ()

@end

@implementation ToDoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

- (IBAction)unwindToDoList:(UIStoryboardSegue*)segue {
    
}

@end
