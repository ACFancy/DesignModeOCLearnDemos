//
//  FilmStar.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BFilmStar.h"
#import "ActFilm.h"

@implementation BFilmStar

- (instancetype)init
{
    self = [super initWithAction:[ActFilm new]];
    return self;
}

- (void)doJob
{
    NSLog(@"Act Film");
    [super doJob];
}

@end
