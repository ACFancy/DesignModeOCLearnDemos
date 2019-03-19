//
//  ValueStackHelper.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ValueStackHelper.h"
#import "ValueStack.h"

@interface ValueStackHelper ()

@property (nonatomic, strong) ValueStack *valueStack;

@end

@implementation ValueStackHelper

- (instancetype)init
{
    if (self = [super init]) {
        _valueStack = [ValueStack new];
    }
    return self;
}

- (ValueStack *)putIntoStack:(ServletRequest *)req
{
    
    return _valueStack;
}

+ (ValueStack *)getValueStack
{
    return [ValueStack new];
}

@end
