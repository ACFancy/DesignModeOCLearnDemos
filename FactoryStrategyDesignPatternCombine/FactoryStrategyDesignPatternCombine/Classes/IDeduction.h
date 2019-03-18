//
//  IDeduction.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IDeduction_h
#define IDeduction_h

//抽象策略
@class Card, Trade;
@protocol IDeduction <NSObject>

- (BOOL)exec:(Card *)card trade:(Trade *)trade;

@end

#endif /* IDeduction_h */
