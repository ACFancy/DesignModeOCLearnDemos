//
//  Director.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SuperMan;
@interface Director : NSObject

+ (SuperMan *)fetchAdultSuperMan;

+ (SuperMan *)fetchChildSuperMan;

@end

NS_ASSUME_NONNULL_END
