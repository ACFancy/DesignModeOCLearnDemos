//
//  BookStore.m
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BookStore.h"
#import "NoveBook.h"
#import "OffNoveBook.h"
#import "ComputerBook.h"

static NSMutableArray<id<IBook>> *bookList;
@interface BookStore()

@end

@implementation BookStore

#pragma mark - Override MEthods
+ (void)load {
    [super load];
    if (!bookList) {
        bookList = [NSMutableArray arrayWithCapacity:3];
    }
    [bookList removeAllObjects];
    [bookList addObject:[[OffNoveBook alloc] initWithName:@"xx" price:50 author:@"xx"]];
    [bookList addObject:[[OffNoveBook alloc] initWithName:@"yy" price:40 author:@"yy"]];
    [bookList addObject:[[OffNoveBook alloc] initWithName:@"tt" price:60 author:@"tt"]];
    [bookList addObject:[[ComputerBook alloc] initWithName:@"xsd" price:90 author:@"MM" scope:@"Computer"]];
}

#pragma mark - Public Methods
+ (void)execute {
    for (id<IBook> book in bookList) {
        NSLog(@"%@-%@-%zd", [book getName], [book getAuthor], [book getPrice]);
    }
}

@end
