//
//  CarModel.m
//  BuilderDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//
/*
 对于一个具体的模型永远都固定的，但是对N多个模型就是动态的了。在子类中实现父类的基本方法，run()方法读取sequence，然后遍历sequence中的字符串，哪个字符串在先，就先执行哪个方法
 */
#import "CarModel.h"

@interface CarModel ()

@property (nonatomic, strong) NSArray *sequence;

@end

@implementation CarModel


- (void)start {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"abstract methods must implementation in subclass" userInfo:nil];
}

- (void)stop {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"abstract methods must implementation in subclass" userInfo:nil];
}

- (void)alarm {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"abstract methods must implementation in subclass" userInfo:nil];
}

- (void)engineBoom {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"abstract methods must implementation in subclass" userInfo:nil];
}

- (void)run {
    for (int i = 0; i < _sequence.count; i++) {
        NSString *actionName = _sequence[i];
        if (actionName != nil && [[actionName lowercaseString] isEqualToString:@"start"]) {
            [self start];
        } else if (actionName != nil && [[actionName lowercaseString] isEqualToString:@"stop"]) {
            [self stop];
        } else if (actionName != nil && [[actionName lowercaseString] isEqualToString:@"alarm"]) {
            [self alarm];
        } else if (actionName != nil && [[actionName lowercaseString] isEqualToString:@"engine boom"]) {
            [self engineBoom];
        }
    }
}

- (void)setSequence:(NSArray *)sequence {
    _sequence = sequence;
}


@end
