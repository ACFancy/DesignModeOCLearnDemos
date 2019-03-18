//
//  Trade.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Trade : NSObject

@property (nonatomic, strong) NSString *tradeNo;
@property (nonatomic, assign) NSInteger amount;

@end

NS_ASSUME_NONNULL_END
