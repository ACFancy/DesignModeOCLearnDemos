//
//  UserByNameEqual.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "IUserSpecification.h"
#import "CompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserByNameEqual : CompositeSpecification //<IUserSpecification>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
