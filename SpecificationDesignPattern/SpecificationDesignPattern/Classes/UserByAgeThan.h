//
//  UserByAgeThan.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeSpecification.h"
//#import "IUserSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserByAgeThan : CompositeSpecification //<IUserSpecification>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithAge:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
