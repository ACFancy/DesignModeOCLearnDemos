//
//  ClassUtils.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ClassUtils.h"
#import <objc/message.h>

@implementation ClassUtils

+ (NSArray *)fetchSonClass:(Class)fatherClass
{
    NSMutableArray *returlClassList = [NSMutableArray array];
    int numberClass;
    Class *classList = NULL;
    numberClass = objc_getClassList(NULL, 0);
    if (numberClass > 0) {
        classList = (__unsafe_unretained Class *)malloc(sizeof(Class) * numberClass);
        objc_getClassList(classList, numberClass);
        for (int i = 0; i < numberClass; i++) {
            if ([class_getSuperclass(classList[i]) isEqual:fatherClass]) {
                [returlClassList addObject:classList[i]];
            }
        }
        free(classList);
    }
    return returlClassList.copy;
}

@end
