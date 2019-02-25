//
//  MaleFactory.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "MaleFactory.h"
#import "MaleBlackHuman.h"
#import "MaleWhiteHuman.h"
#import "MaleYellowHuman.h"

@implementation MaleFactory

- (id<Human>)createBlackHuman {
    return [MaleBlackHuman new];
}

- (id<Human>)createWhiteHuman {
    return [MaleWhiteHuman new];
}

- (id<Human>)createYellowHuman {
    return [MaleYellowHuman new];
}

@end
