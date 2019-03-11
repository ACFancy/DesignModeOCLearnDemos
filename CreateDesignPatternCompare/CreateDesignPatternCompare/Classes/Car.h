//
//  Car.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICar2.h"

NS_ASSUME_NONNULL_BEGIN

//具体车辆
@interface Car : NSObject <ICar2>

- (instancetype)initWithEngine:(NSString *)engine wheel:(NSString *)wheel;

@end

NS_ASSUME_NONNULL_END
