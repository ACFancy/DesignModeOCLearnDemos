//
//  Sale.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

//销售管理
@interface Sale : AbstractColleague

- (void)sellIBMcomputer:(NSInteger)number;

- (NSInteger)fetchSaleStatus;

- (void)offSale;

@end

NS_ASSUME_NONNULL_END
