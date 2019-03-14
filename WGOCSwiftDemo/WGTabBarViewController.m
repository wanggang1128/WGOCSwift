//
//  WGTabBarViewController.m
//  CustomLearn
//
//  Created by wanggang on 2017/6/1.
//  Copyright © 2017年 CSII. All rights reserved.
//

#import "WGTabBarViewController.h"
#import "WGOCRootViewController.h"
#import "WGOCSwiftDemo-Swift.h"

@interface WGTabBarViewController ()

@end

@implementation WGTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WGOCRootViewController *oneView = [[WGOCRootViewController alloc] init];
    WGSwiftRootViewController *twoView = [[WGSwiftRootViewController alloc] init];
    
    [self setViewControllers:@[[self viewController:oneView title:@"OC" nomalImg:@"test" tag:0],[self viewController:twoView title:@"Swift" nomalImg:@"test" tag:1]]];
}

- (UINavigationController *)viewController:(UIViewController *)vc title:(NSString *)title nomalImg:(NSString *)imgStr tag:(NSInteger)tag{
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title image:[UIImage imageNamed:imgStr] tag:tag];
    item.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@",imgStr,@"s"]];
    vc.tabBarItem = item;
    return nav;
}


















@end
