//
//  Purchase.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Purchase.h"
//#import "Sale.h"
//#import "Stock.h"
#import "AbstractMediator.h"


@implementation Purchase

- (void)buyIBMcomputer:(NSInteger)number
{
//    Stock *stock = [Stock new];
//    Sale *sale = [Sale new];
//
//    NSInteger saleStatus = [sale fetchSaleStatus];
//    if (saleStatus > 80) {
//        NSLog(@"%s-%ld-台", __FUNCTION__, number);
//        [stock increase:number];
//    } else {
//        NSInteger buyNumber = number / 2;
//        NSLog(@"%s-%ld-台", __FUNCTION__, buyNumber);
//        [stock increase:buyNumber];
//    }
    [self.mediator execute:@"purchas.buy" objects:@[@(number)]];
    
}

- (void)refuseBuyIBM
{
    NSLog(@"%s", __FUNCTION__);
}

@end
