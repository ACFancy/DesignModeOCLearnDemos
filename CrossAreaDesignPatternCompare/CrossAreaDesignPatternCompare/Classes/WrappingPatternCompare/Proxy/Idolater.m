//
//  Idolater.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Idolater.h"
#import "Singer.h"
#import "Agent.h"

@implementation Idolater

- (void)starchaser
{
    id<IStar> star = [Singer new];
    id<IStar> agent = [[Agent alloc] initWithStar: star];
    [agent sign];
}

@end
