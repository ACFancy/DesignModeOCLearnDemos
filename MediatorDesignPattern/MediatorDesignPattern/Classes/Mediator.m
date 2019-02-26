//
//  Mediator.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Mediator.h"
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"

//中介者Mediator定义了多个private方法，其目的是处理各个对象之间的依赖关系，就是说把原有一个对象要依赖多个对象的情况移到中介者的private方法中实现。
//在实际项目中，一般的做法是中介者按照职责进行划分，每个中介者处理一个或多个类似的关联请求。由于要使用中介者，我们增加了一个抽象同事类，三个具体的实现类分别继承该抽象类
@implementation Mediator

- (void)execute:(NSString *)str objects:(NSArray *)objects
{
    if ([str isEqualToString:@"purchas.buy"]) {
        [self buyComputer:[objects.firstObject integerValue]];
    } else if ([str isEqualToString:@"sale.sell"]) {
        [self sellIBMcomputer:[objects.firstObject integerValue]];
    } else if ([str isEqualToString:@"sale.offsell"]) {
        [self offSale];
    } else if ([str isEqualToString:@"stock.clear"]) {
        [self clearStock];
    }
}

#pragma mark - Private Methods
- (void)buyComputer:(NSInteger)number
{
    NSInteger saleStatus = [self.sale fetchSaleStatus];
    if (saleStatus > 80) {
        NSLog(@"%s-%ld-台", __FUNCTION__, number);
        [self.stock increase:number];
    } else {
        NSInteger buyNumber = number / 2;
        NSLog(@"%s-%ld-台", __FUNCTION__, buyNumber);
        [self.stock increase:buyNumber];
    }
}

- (void)sellIBMcomputer:(NSInteger)number
{
    if ([self.stock fetchStockNumber] < number) {
        [self.purchase buyIBMcomputer:number];
    }
    NSLog(@"%s-%ld", __FUNCTION__, number);
    [self.stock descrease:number];
}

- (void)offSale
{
    NSLog(@"%s-%ld", __FUNCTION__, [self.stock fetchStockNumber]);
}

- (void)clearStock
{
    [self.sale offSale];
    [self.purchase refuseBuyIBM];
}

@end
