//
//  FemaleFactory.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "FemaleFactory.h"
#import "FemaleBlackHuman.h"
#import "FemaleWhiteHuman.h"
#import "FemaleYellowHuman.h"

@implementation FemaleFactory

- (id<Human>)createBlackHuman {
    return [FemaleBlackHuman new];
}

- (id<Human>)createWhiteHuman {
    return [FemaleWhiteHuman new];
}

- (id<Human>)createYellowHuman {
    return [FemaleYellowHuman new];
}

@end
