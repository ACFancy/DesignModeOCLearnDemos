//
//  Stock.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Stock.h"
//#import "Purchase.h"
//#import "Sale.h"
#import "AbstractMediator.h"

@implementation Stock

static NSInteger COMPUTER_NUMBER = 100;

- (void)increase:(NSInteger)number
{
    COMPUTER_NUMBER = COMPUTER_NUMBER + number;
    NSLog(@"Store-%s %ld", __FUNCTION__, COMPUTER_NUMBER);
}

- (void)descrease:(NSInteger)number
{
    COMPUTER_NUMBER = MAX(0, COMPUTER_NUMBER - number);
    NSLog(@"Store-%s %ld", __FUNCTION__, COMPUTER_NUMBER);
}

- (NSInteger)fetchStockNumber
{
    return COMPUTER_NUMBER;
}

- (void)clearStock
{
//    Purchase *purchase = [Purchase new];
//    Sale *sale = [Sale new];
//    NSLog(@"%s-%ld", __FUNCTION__, COMPUTER_NUMBER);
//    [sale offSale];
//    [purchase refuseBuyIBM];
    [self.mediator execute:@"stock.clear" objects:nil];
}

@end
