//
//  Card.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (nonatomic, strong) NSString *cardNo;
@property (nonatomic, assign) NSInteger steadyMoney;
@property (nonatomic, assign) NSInteger freeMoney;

@end

NS_ASSUME_NONNULL_END
