//
//  Product.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "Product.h"
#import "ProductManager.h"
#import <objc/message.h>

@interface Product ()

@property (nonatomic, assign) BOOL canChanged;

@end

@implementation Product

//这种一个对象只能由固定的对象初始化的方法就叫做单来源调用（Single Call）——很简单，但非常有用的方法。
//注意　采用单来源调用的两个对象一般是组合关系，两者有相同的生命期，它通常适用于有单例模式和工厂方法模式的场景中
- (instancetype)initWithManager:(ProductManager *)manager name:(NSString *)name
{
    if ((self = [super init]) &&
        [manager isCreateProduct]) {
        _canChanged = YES;
        _name = name;
    }
    return self;
}

- (void)setName:(NSString *)name
{
    if (_canChanged) {
        _name = name;
    }
}

#pragma mark - Copy Methods
- (id)copyWithZone:(NSZone *)zone
{
    Product *p = [[self class] allocWithZone:zone];
    unsigned int count;
    objc_property_t *property_list = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; i++) {
        objc_property_t property = property_list[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        @try {
            id value = [self valueForKey:key];
            if ([value conformsToProtocol:@protocol(NSCopying)]) {
                [p setValue:[value copy] forKey:key];
            } else {
                [p setValue:value forKey:key];
            }
        } @catch (NSException *exception) {
            continue;
        }
    }
    free(property_list);
    return p;
    
}

@end
