//
//  DRunnerWithJet.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DRunnerWithJet.h"

@interface DRunnerWithJet ()

@property (nonatomic, strong) id<IDRunner> runner;

@end

@implementation DRunnerWithJet

- (instancetype)initWithRunner:(id<IDRunner>)runner
{
    if (self = [super init]) {
        _runner = runner;
    }
    return self;
}

//这和代理模式中的代理类也是非常相似的，只是装饰类对类的行为没有决定权，只有增强作用，也就是说它不决定被代理的方法是否执行，它只是再次增加被代理的功能。
- (void)run
{
    NSLog(@"Add Jet");
    [_runner run];
}

@end
