//
//  KungFuRole.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "KungFuRole.h"
#import "AbsActor.h"

@implementation KungFuRole

- (void)accept:(AbsActor *)actor
{
    [actor actKongFu:self];
}

@end
