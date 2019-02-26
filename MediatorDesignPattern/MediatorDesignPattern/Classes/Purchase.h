//
//  Purchase.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

//采购管理
@interface Purchase : AbstractColleague

- (void)buyIBMcomputer:(NSInteger)number;

- (void)refuseBuyIBM;

@end

NS_ASSUME_NONNULL_END
