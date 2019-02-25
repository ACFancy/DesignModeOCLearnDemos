//
//  ProtoTypeClass.m
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ProtoTypeClass.h"
#import <objc/message.h>

@implementation ProtoTypeClass

- (id)copyWithZone:(NSZone *)zone
{
    Class cls = [self class];
    typeof(self) newObject = [[cls allocWithZone:zone] init];
    unsigned int count = 0;
    objc_property_t *propertyList = class_copyPropertyList(cls, &count);
    for (unsigned int i = 0; i < count; i++) {
        objc_property_t property = propertyList[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        id value = [self valueForKey:key];
        @try {
            if (value) {
                if ([NSStringFromClass([value class]) hasPrefix:@"NSMutable"]) {
                    [newObject setValue:value forKey:key];
                } else if ([value respondsToSelector:@selector(copyWithZone:)]) {
                    [newObject setValue:[value copy] forKey:key];
                } else {
                    [newObject setValue:value forKey:key];
                }
            }
        } @catch (NSException *e) {
            continue;
        }
    }
    free(propertyList);
    return newObject;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    Class cls = [self class];
    typeof(self) newObject = [[cls allocWithZone:zone] init];
    unsigned int count = 0;
    objc_property_t *propertyList = class_copyPropertyList(cls, &count);
    for (unsigned int i = 0; i < count; i++) {
        objc_property_t property = propertyList[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        id value = [self valueForKey:key];
        @try {
            if ([value respondsToSelector:@selector(mutableCopyWithZone:)]) {
                [newObject setValue:[value mutableCopy] forKey:key];
            } else {
                [newObject setValue:value forKey:key];
            }
        } @catch (NSException *e) {
            continue;
        }
    }
    free(propertyList);
    return newObject;
}

@end
