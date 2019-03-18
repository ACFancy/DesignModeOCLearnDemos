//
//  Beggar.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "Beggar.h"
#import "ProductEvent.h"
#import "Product.h"

@implementation Beggar

- (instancetype)init
{
    if (self = [super initWithType:DEL]) {
        
    }
    return self;
}

#pragma mark - Override
- (void)exec:(ProductEvent *)event
{
    Product *source = [event source];
    ProductEventType type = [event type];
    
    NSLog(@"%@ handle事件:%@ 删除事件类型：%lu", NSStringFromClass([self class]), [source name], type);
}

@end
