//
//  YCViewController.m
//  DemoPod
//
//  Created by machinefixer on 11/06/2017.
//  Copyright (c) 2017 machinefixer. All rights reserved.
//

#import "YCViewController.h"
#import <DemoPod/YCDemo.h>

@interface YCViewController ()

@end

@implementation YCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    YCDemo *demo = [[YCDemo alloc] init];
    [demo checkout];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
