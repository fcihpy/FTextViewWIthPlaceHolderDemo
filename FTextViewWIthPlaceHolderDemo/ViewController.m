//
//  ViewController.m
//  FTextViewWIthPlaceHolderDemo
//
//  Created by zhisheshe on 15/7/27.
//  Copyright (c) 2015年 fcihpy. All rights reserved.
//

#import "ViewController.h"
#import "FCTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    FCTextView *textView = [[FCTextView alloc]init];
    textView.font = [UIFont systemFontOfSize:15];
    textView.frame = CGRectMake(10, 65, 200, 98);
    textView.backgroundColor = [UIColor grayColor];
    textView.placeholder = @"aaaa";
    textView.placeholderColor = [UIColor greenColor];
    
    [self.view addSubview:textView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
