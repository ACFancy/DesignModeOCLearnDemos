//
//  ActionNode.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ActionNode.h"

@interface ActionNode ()

@property (nonatomic, strong) NSString *actionName;
@property (nonatomic, strong) NSString *actionClass;
@property (nonatomic, strong) NSString *methodName;
@property (nonatomic, strong) NSString *view;

@end

@implementation ActionNode

- (instancetype)init
{
    if (self = [super init]) {
        _methodName = @"excuete";
    }
    return self;
}

- (NSString *)getView:(NSString *)result
{
   @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
