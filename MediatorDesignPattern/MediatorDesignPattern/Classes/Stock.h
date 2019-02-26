//
//  Stock.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

// 库存管理
@interface Stock : AbstractColleague

- (void)increase:(NSInteger)number;

- (void)descrease:(NSInteger)number;

- (NSInteger)fetchStockNumber;

- (void)clearStock;

@end

NS_ASSUME_NONNULL_END
