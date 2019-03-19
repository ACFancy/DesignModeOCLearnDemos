//
//  MVC_NO_IOSTests.m
//  MVC_NO_IOSTests
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Client.h"

@interface MVC_NO_IOSTests : XCTestCase

@end

@implementation MVC_NO_IOSTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [Client execute];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
