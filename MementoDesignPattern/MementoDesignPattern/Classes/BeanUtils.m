//
//  BeanUtils.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BeanUtils.h"
#import <objc/message.h>

@implementation BeanUtils

+ (NSMutableDictionary *)backupProp:(NSObject *)obj
{
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    if (obj == nil) {
        return result;
    }
    @try {
        
        unsigned int count;
        objc_property_t *list = class_copyPropertyList([obj class], &count);
        for (int i = 0; i < count; i++) {
            objc_property_t p = list[i];
            NSString *key = [NSString stringWithUTF8String:property_getName(p)];
            id value = [obj valueForKey:key];
            if (key && value) {
                result[key] = value;
            }
        }
        free(list);
    } @catch (NSException *exception) {
        //
        return nil;
    }
    return result;
}

+ (void)restoreProp:(NSObject *)obj propMap:(NSMutableDictionary *)propMap
{
    if (propMap != nil) {
        unsigned int count;
        objc_property_t *list = class_copyPropertyList([obj class], &count);
        for (int i = 0; i < count; i++) {
            objc_property_t p = list[i];
            NSString *key = [NSString stringWithUTF8String:property_getName(p)];
            id value = [propMap objectForKey:key];
            if (key && value) {
                [obj setValue:value forKey:key];
            }
        }
        free(list);
    }
}

@end
