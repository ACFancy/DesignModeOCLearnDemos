//
//  OffNoveBookTestCase.m
//  OpenClosePrincipleTests
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Interface.h"
#import "OffNoveBook.h"

@interface OffNoveBookTestCase : XCTestCase

@property (nonatomic, strong) id<IBook> below40NoveBook;
@property (nonatomic, strong) id<IBook> above40NoveBook;

@end

@implementation OffNoveBookTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _below40NoveBook = [[OffNoveBook alloc] initWithName:@"sd" price:20 author:@"lv"];
    _above40NoveBook = [[OffNoveBook alloc] initWithName:@"sdk" price:50 author:@"LV"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetPriceBlow40 {
    XCTAssertEqual(16, [_below40NoveBook getPrice]);
}

- (void)testGetPriceAbove40 {
    XCTAssertEqual(45, [_above40NoveBook getPrice]);
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

@end
