//
//  IdiotRole.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "IdiotRole.h"
#import "AbsActor.h"

@implementation IdiotRole

- (void)accept:(AbsActor *)actor
{
    [actor act:self];
}

@end
