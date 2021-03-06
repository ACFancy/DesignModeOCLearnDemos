//
//  DriverTest.m
//  DependenceInversionPrincipleTests
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Interface.h"
#import <OCMockito.h>
#import "TestProtocolClass.h"

@interface DriverTest : XCTestCase

@end

@implementation DriverTest

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
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testDriver {
    id<ICar> car = mockProtocol(@protocol(ICar));
    id<IDriver> driver = mockProtocol(@protocol(IDriver));
    @try {
        [driver drive:car];
    } @catch (NSException *e) {
        XCTAssertThrows(e);
    }
}

- (void)testAutoCarDriver {
    id<IDriver, ICar> test = [TestProtocolClass new];
    [test drive];
    [test drive:test];
}

@end
