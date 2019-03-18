//
//  EventDispatch.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

/*
 ● 事件的观察者
 作为观察者模式中的观察者角色，接收被观察期望完成的任务，在我们的框架中就是接收ProductEvent事件。
 ● 事件分发者
 作为中介者模式的中介者角色，它担当着非常重要的任务——分发事件，并同时协调各个同事类（也就是事件的处理者）处理事件。
 ● 事件处理者的管理员角色
 不是每一个事件的处理者都可以接收事件并进行处理，是需要获得分发者许可后才可以，也就是说只有事件分发者允许它处理，它才能处理。
 */

#import "EventDispatch.h"
#import "Product.h"
#import "ProductEvent.h"
#import "EventCustomer.h"

@interface EventDispatch ()

@property (nonatomic, strong) NSMutableArray *customer;

@end

@implementation EventDispatch

- (instancetype)init
{
    if (self = [super init]) {
        _customer = [NSMutableArray array];
    }
    return self;
}

//观察者为EventDispatch类，它使用了单例模式，避免对象膨胀，但同时也带来了性能及线程安全隐患，这点需要大家在实际应用中注意（想想Spring中的Bean注入，默认也是单例，在通常的应用中一般不需要修改，除非是较大并发的应用
+ (instancetype)fetchEventDispatch
{
    static EventDispatch *dispatch;
    if (dispatch == nil) {
        dispatch = [[self alloc] init];
    }
    return dispatch;
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
//事件触发
//不是每一个事件的处理者都可以接收事件并进行处理，是需要获得分发者许可后才可以，也就是说只有事件分发者允许它处理，它才能处理
- (void)update:(NSObject *)o obj:(NSObject *)obj
{
    Product *product = (Product *)obj;
    ProductEvent *event = (ProductEvent *)o;
    
    //处理者处理，这里是中介者模式的核心，可以是很复杂的业务逻辑
    for (EventCustomer *e in _customer) {
        for (NSNumber *type in [e customType]) {
            if (type.unsignedIntegerValue == [event type]) {
                [e exec:event];
            }
        }
    }
}
#pragma clang diagnostic pop
//注册事件处理者
- (void)registerCustomer:(EventCustomer *)customer
{
    [_customer addObject:customer];
}

@end
