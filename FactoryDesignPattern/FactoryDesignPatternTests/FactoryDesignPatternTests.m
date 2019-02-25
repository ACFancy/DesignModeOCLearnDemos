//
//  FactoryDesignPatternTests.m
//  FactoryDesignPatternTests
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NvWa.h"

@interface FactoryDesignPatternTests : XCTestCase

@end

@implementation FactoryDesignPatternTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    [[NvWa new] execute];
    [[NvWa new] executeFactory];
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
