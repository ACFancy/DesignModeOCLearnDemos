//
//  ProductEvent.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "ProductEvent.h"
#import "Product.h"
#import "EventDispatch.h"
#import "Observer.h"

static NSMutableArray *observers;

@interface ProductEvent ()

@property (nonatomic, strong) Product *source;
@property (nonatomic, assign) ProductEventType type;

@end

@implementation ProductEvent

+ (void)initialize
{
    observers = [NSMutableArray array];
    [super initialize];
}

- (instancetype)initWithProduct:(Product *)product
{
    return [self initWithProduct:product type:NEW_PRODUCT];
}

- (instancetype)initWithProduct:(Product *)product type:(ProductEventType)type
{
    if (self = [super init]) {
        _source = product;
        _type = type;
        //触发事件
        [self notifyDispatch];
    }
    return self;
}

#pragma mark - Private Methods
//产品事件类中增加了一个私有方法notfiyEventDispatch，该方法的作用是明确事件的观察者，并同时在初始化时通知观察者
- (void)notifyDispatch
{
    if (![observers containsObject:[EventDispatch fetchEventDispatch]]) {
        [observers addObject:[EventDispatch fetchEventDispatch]];
    }
    
    for (id<Observer> ob in observers) {
        [ob update:self obj:_source];
    }
}

@end
