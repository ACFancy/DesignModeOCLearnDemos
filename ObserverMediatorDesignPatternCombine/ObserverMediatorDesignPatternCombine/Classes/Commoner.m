//
//  Commoner.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "Commoner.h"
#import "ProductEvent.h"
#import "Product.h"

@implementation Commoner

- (instancetype)init
{
    self = [super initWithType:NEW];
    return self;
}

#pragma mark - Override
- (void)exec:(ProductEvent *)event
{
    Product *source = [event source];
    ProductEventType type = [event type];
    NSLog(@"%@ handle事件:%@ 创建事件类型：%lu", NSStringFromClass([self class]), [source name], type);
}

@end
