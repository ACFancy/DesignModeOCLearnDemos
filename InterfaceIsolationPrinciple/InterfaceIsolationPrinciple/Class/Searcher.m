//
//  Searcher.m
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Searcher.h"

@implementation Searcher

- (instancetype)initWithPettyGirl:(id<IPettyGrirl>)pettyGirl {
    if (self = [super initWithPettyGirl:pettyGirl]) {
        
    }
    return self;
}

- (void)show {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
    [self.pettyGirl goodLooking];
    [self.pettyGirl niceFigure];
    [self.pettyGirl greatTemperament];
}

@end
