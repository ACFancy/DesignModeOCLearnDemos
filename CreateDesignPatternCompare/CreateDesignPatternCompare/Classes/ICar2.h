//
//  ICar2.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ICar2_h
#define ICar2_h

//车辆产品描述
@protocol ICar2 <NSObject>

- (NSString *)getWheel;

- (NSString *)getEngine;

- (NSString *)toString;

@end

#endif /* ICar2_h */
