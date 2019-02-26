//
//  AColleague.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AColleague.h"

@implementation AColleague
//一般来说，中介者模式中的抽象都比较简单，是为了建立这个中介而服务的
//通过构造函数传递中介者
- (instancetype)initWithMediator:(AMediator *)mediator
{
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

@end
