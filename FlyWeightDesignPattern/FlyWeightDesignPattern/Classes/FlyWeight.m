//
//  FlyWeight.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "FlyWeight.h"

@interface FlyWeight ()

@property (nonatomic, strong) NSString *extrinsic;

@end

@implementation FlyWeight

//要求享元角色必须接受外部状态
- (instancetype)initWithExtrinsic:(NSString *)extrinsic
{
    if (self = [super init]) {
        _extrinsic = extrinsic;
    }
    return self;
}

//定义业务操作
- (void)operate
{
    
}

@end
