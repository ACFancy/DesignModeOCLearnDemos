//
//  Teacher.m
//  LeastKnowledgePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Teacher.h"

#import "GroupLeader.h"
#import "Girl.h"

@implementation Teacher

- (void)commond:(GroupLeader *)groupLeader {
    [groupLeader countGirls];
}

@end
