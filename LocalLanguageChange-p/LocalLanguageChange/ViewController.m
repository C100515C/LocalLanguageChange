//
//  ViewController.m
//  LocalLanguageChange
//
//  Created by chenchen on 16/8/19.
//  Copyright © 2016年 chenchen. All rights reserved.
//

#import "ViewController.h"
#import "Constant.h"
#import "AppDelegate.h"
#import "testModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myContent;
@property (weak, nonatomic) IBOutlet UIButton *changeBtn;

@end

extern  NSString *test;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myContent.text = Localized(@"content");
    [self.changeBtn addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",test);
    test = @"tade";
    
    testModel *model = [[testModel alloc] init];
    [model test];
    NSLog(@"%@",test);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)change:(id)sender{
    NSString *language = [[NSUserDefaults standardUserDefaults]objectForKey:LanguageKey];
    if ([language isEqualToString: English]) {
        [[NSUserDefaults standardUserDefaults] setObject:Chinese forKey:LanguageKey];
    }else {
        [[NSUserDefaults standardUserDefaults] setObject:English forKey:LanguageKey];
    }
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    self.myContent.text = Localized(@"content");//切换完语言文件 需要 重新给界面刷新 或初始化
}

@end
