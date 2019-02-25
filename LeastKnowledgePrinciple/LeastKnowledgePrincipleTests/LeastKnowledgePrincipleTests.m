//
//  LeastKnowledgePrincipleTests.m
//  LeastKnowledgePrincipleTests
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Teacher.h"
#import "GroupLeader.h"
#import "Girl.h"

@interface LeastKnowledgePrincipleTests : XCTestCase

@end

@implementation LeastKnowledgePrincipleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSMutableSet *listGrils = [NSMutableSet set];
    for (int i = 0; i < 20; i++) {
        [listGrils addObject:[Girl new]];
    }
    GroupLeader *groupLeader = [[GroupLeader alloc] initWithListGirls:listGrils.copy];
    Teacher *teacher = [Teacher new];
    [teacher commond:groupLeader];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
