//
//  NoveBook.m
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "NoveBook.h"

@interface NoveBook() {
    @private
    NSString *_name;
    NSInteger _price;
    NSString *_author;
}

@end

@implementation NoveBook

#pragma mark - init Methods
- (instancetype)initWithName:(NSString *)name
                       price:(NSInteger)price
                      author:(NSString *)author
{
    if (self = [super init]) {
        _name = name;
        _price = price;
        _author = author;
    }
    return self;
}

#pragma mark - Protocol Methods
- (NSString *)getName {
    return _name;
}

- (NSInteger)getPrice {
    return _price;
}

- (NSString *)getAuthor {
    return _author;
}

@end
