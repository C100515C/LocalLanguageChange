//
//  test.m
//  LocalLanguageChange
//
//  Created by chenchen on 16/8/19.
//  Copyright © 2016年 chenchen. All rights reserved.
//

#import "testModel.h"
#import "AppDelegate.h"

extern NSString *test;
@implementation testModel
-(void)test{
    NSLog(@"%@",test);
    test = @"zhede";
}
@end
