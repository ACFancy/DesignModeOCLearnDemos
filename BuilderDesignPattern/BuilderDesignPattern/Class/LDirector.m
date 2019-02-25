//
//  LDirector.m
//  BuilderDesignPattern
//
//  Created by User on 2019/2/21.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LDirector.h"
#import "ConcreteBuilder.h"
#import "ConcreteProduct.h"

@interface LDirector ()

@property (nonatomic, strong) ConcreteBuilder *builder;

@end

//导演类
@implementation LDirector

- (instancetype)init
{
    if (self = [super init]) {
       _builder = [ConcreteBuilder new];
    }
    return self;
}

- (ConcreteProduct *)getAProduct
{
    [_builder setPart];
    return [_builder buildProduct];
}

@end
