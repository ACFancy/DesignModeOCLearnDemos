//
//  ObjectStruture.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ObjectStruture.h"
#import "ConcreteElement1.h"
#import "ConcreteElement2.h"

@implementation ObjectStruture

+ (AElement *)createElement
{
    if (arc4random_uniform(2) == 0) {
        return [ConcreteElement1 new];
    } else {
        return [ConcreteElement2 new];
    }
}

@end
