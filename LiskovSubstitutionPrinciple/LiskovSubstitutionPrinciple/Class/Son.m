//
//  Son.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Son.h"

@implementation Son

- (NSArray *)doSomething:(NSMutableSet *)set {
    NSLog(@"%s\n", __FUNCTION__);
    return set.allObjects;
}

@end
