//
//  ICalculator.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ICalculator_h
#define ICalculator_h

@protocol ICalculator <NSObject>

- (NSInteger)execWithA:(NSInteger)a b:(NSInteger)b;

@end

#endif /* ICalculator_h */
