//
//  TestProtocolClass.m
//  DependenceInversionPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "TestProtocolClass.h"

@interface TestProtocolClass()

@end

@implementation TestProtocolClass

- (void)drive:(id<ICar>)car {
    [car run];
}

- (void)run {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)drive {
    [self run];
}

@end
