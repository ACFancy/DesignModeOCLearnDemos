//
//  Nobleman.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "Nobleman.h"
#import "ProductEvent.h"
#import "Product.h"

@implementation Nobleman

- (instancetype)init
{
    self = [super initWithType:EDIT];
    [self addCustomType:CLONE];
    return self;
}

#pragma mark - Override
- (void)exec:(ProductEvent *)event
{
    Product *source = [event source];
    ProductEventType type = [event type];
    if (type == CLONE) {
        NSLog(@"%@ handle事件:%@ 克隆事件类型：%lu", NSStringFromClass([self class]), [source name], type);
    } else {
        NSLog(@"%@ handle事件:%@ 修改事件类型：%lu", NSStringFromClass([self class]), [source name], type);
    }
}

@end
