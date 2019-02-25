//
//  NoveBookTestCase.m
//  OpenClosePrincipleTests
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Interface.h"
#import "NoveBook.h"

@interface NoveBookTestCase : XCTestCase

@property (nonatomic, strong) NSString *bookname;
@property (nonatomic, assign) NSInteger price;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) id<IBook> noveBook;

@end

@implementation NoveBookTestCase

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _bookname = @"llll";
    _price = 20;
    _author = @"kkk";
    _noveBook = [[NoveBook alloc] initWithName:_bookname price:_price author:_author];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//首先是正常的业务逻辑要保证测试到，其次是边界条件要测试到，然后是异常要测试到
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual(_price, [_noveBook getPrice]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
