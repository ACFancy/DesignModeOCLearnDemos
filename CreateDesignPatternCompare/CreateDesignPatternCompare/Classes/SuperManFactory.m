//
//  SuperManFactory.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SuperManFactory.h"
#import "AdultSuperMan.h"
#import "ChildSuperMan.h"

@implementation SuperManFactory

+ (id<ISuperMan>) createSuperMan:(NSString *)type
{
    if ([type.lowercaseString isEqualToString:@"adult"]) {
        return [AdultSuperMan new];
    } else if ([type.lowercaseString isEqualToString:@"child"]) {
        return [ChildSuperMan new];
    } else {
        return nil;
    }
}

@end
