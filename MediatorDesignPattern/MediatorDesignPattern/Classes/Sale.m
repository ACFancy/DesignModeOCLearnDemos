//
//  Sale.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Sale.h"
//#import "Stock.h"
//#import "Purchase.h"
#import "AbstractMediator.h"

@implementation Sale

- (void)sellIBMcomputer:(NSInteger)number
{
//    Stock *stock = [Stock new];
//    Purchase *purchase = [Purchase new];
//    if ([stock fetchStockNumber] < number) {
//        [purchase buyIBMcomputer:number];
//    }
//    NSLog(@"%s-%ld", __FUNCTION__, number);
//    [stock descrease:number];
    [self.mediator execute:@"sale.sell" objects:@[@(number)]];
}

- (NSInteger)fetchSaleStatus
{
    NSInteger saleStatus = arc4random_uniform(101);
    NSLog(@"%s-%ld", __FUNCTION__, saleStatus);
    return saleStatus;
}

- (void)offSale
{
//    Stock *stock = [Stock new];
//    NSLog(@"%s-%ld", __FUNCTION__, [stock fetchStockNumber]);
    [self.mediator execute:@"sale.offsell" objects:nil];
}

@end
