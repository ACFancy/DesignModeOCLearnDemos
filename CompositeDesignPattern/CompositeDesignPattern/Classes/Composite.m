//
//  Composite.m
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Composite.h"

@interface Composite ()

@property (nonatomic, strong) NSMutableArray *componentArrayList;

@end

@implementation Composite

- (instancetype)init
{
    if (self = [super init]) {
        _componentArrayList = [NSMutableArray array];
    }
    return self;
}

- (void)add:(Component *)component
{
    if (component) {
        [_componentArrayList addObject:component];
    }
}

- (void)remove:(Component *)component
{
    if (component && [_componentArrayList containsObject:component]) {
        [_componentArrayList removeObject:component];
    }
}

- (NSMutableArray *)fetchChildren
{
    return _componentArrayList;
}

@end
