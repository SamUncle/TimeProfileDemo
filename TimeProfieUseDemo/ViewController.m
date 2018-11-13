//
//  ViewController.m
//  TimeProfieUseDemo
//
//  Created by zsm on 2018/11/13.
//  Copyright © 2018年 XinHuoKeJi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"运行开始");
    [self addHeaviestOperation];
    NSLog(@"运行完毕");
}
- (void)addHeaviestOperation{
    for (int i = 0; i < 10000; i++) {
        NSLog(@"我是第 %d 个运行结果",i+1);
    }
}
@end
