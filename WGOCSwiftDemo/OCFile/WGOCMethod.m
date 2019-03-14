//
//  WGOCMethod.m
//  WGOCSwiftDemo
//
//  Created by wanggang on 2019/3/14.
//  Copyright © 2019 bozhong. All rights reserved.
//

#import "WGOCMethod.h"

@implementation WGOCMethod

- (void)ocRun:(NSString *)name{
    NSString *str = [NSString stringWithFormat:@"%@跑起来了", name];
    NSLog(@"%@", str);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:str delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

@end
