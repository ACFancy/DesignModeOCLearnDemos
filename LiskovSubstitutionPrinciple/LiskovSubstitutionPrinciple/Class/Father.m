//
//  Father.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Father.h"

@implementation Father

- (NSArray *)doSomething:(NSSet *)set {
    NSLog(@"%s\n", __FUNCTION__);
    return set.allObjects;
}

@end
