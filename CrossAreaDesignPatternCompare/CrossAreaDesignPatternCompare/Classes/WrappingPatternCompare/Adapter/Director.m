//
//  Director.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Director.h"
#import "FilmStar.h"
#import "Standin.h"
#import "Actor.h"

@implementation Director

- (void)direct
{
    id<IAStar> star = [FilmStar new];
    [star act:@"Star1"];
    id<IActor> actor = [Actor new];
    id<IAStar> standin = [[Standin alloc] initWithActor:actor];
    [standin act:@"Standin"];
    [star act:@"Star2"];
}

@end
