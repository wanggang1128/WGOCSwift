//
//  WGOCFirstViewController.m
//  WGOCSwiftDemo
//
//  Created by wanggang on 2019/3/14.
//  Copyright © 2019 bozhong. All rights reserved.
//

#import "WGOCFirstViewController.h"

@interface WGOCFirstViewController ()

@end

@implementation WGOCFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"WGOCFirstViewController";
    self.view.backgroundColor = [UIColor blueColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    WGSwiftMethod *method = [[WGSwiftMethod alloc] init];
    [method swiftRunWithName:@"WGSwiftMethod"];
}

@end
