//
//  SearcherTestCase.m
//  InterfaceIsolationPrincipleTests
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Interface.h"
#import "PerttyGirl.h"
#import "Searcher.h"

@interface SearcherTestCase : XCTestCase

@end

@implementation SearcherTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    id<IGoodBodyGirl, IGreateTemperamentGirl> pettyGirl = [[PerttyGirl alloc] initWithName:@"你好"];
    AbsractSearcher *searcher = [[Searcher alloc] initWithPettyGirl:pettyGirl];
    XCTAssertNoThrow([searcher show]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
