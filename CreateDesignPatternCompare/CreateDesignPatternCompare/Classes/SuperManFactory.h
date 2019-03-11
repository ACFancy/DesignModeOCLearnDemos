//
//  SuperManFactory.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISuperMan.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperManFactory : NSObject

+ (nullable id<ISuperMan>) createSuperMan:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
