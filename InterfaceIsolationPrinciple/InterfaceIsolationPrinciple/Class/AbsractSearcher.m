//
//  AbsractSearcher.m
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "AbsractSearcher.h"

@implementation AbsractSearcher

#pragma mark - init Methods
- (instancetype)initWithPettyGirl:(id<IGoodBodyGirl, IGreateTemperamentGirl>)pettyGirl {
    if (self = [super init]) {
        _pettyGirl = pettyGirl;
    }
    return self;
}

#pragma mark - Public Methods
- (void)show {
    @throw [NSException exceptionWithName:@"AbstractClassMethodException" reason:@"Abstract class methods must override by subclass , can't use directly" userInfo:nil];
}

@end
