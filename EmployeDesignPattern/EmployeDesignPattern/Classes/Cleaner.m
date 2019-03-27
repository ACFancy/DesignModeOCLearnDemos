//
//  Cleaner.m
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import "Cleaner.h"

@implementation Cleaner

- (void)clean:(id<Cleanable>)clean
{
    [clean cleaned];
}

@end
