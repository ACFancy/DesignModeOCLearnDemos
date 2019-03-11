//
//  ICar.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ICar_h
#define ICar_h

//汽车接口
@protocol ICar <NSObject>

- (NSString *)getBand;

- (NSString *)getModel;

@end

#endif /* ICar_h */
