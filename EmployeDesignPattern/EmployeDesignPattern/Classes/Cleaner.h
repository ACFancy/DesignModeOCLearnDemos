//
//  Cleaner.h
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cleanable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cleaner : NSObject

- (void)clean:(id<Cleanable>)clean;

@end

NS_ASSUME_NONNULL_END
