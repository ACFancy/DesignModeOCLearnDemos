//
//  AndSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "CompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface AndSpecification : CompositeSpecification

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithLeft:(id<IUserSpecification>)left right:(id<IUserSpecification>)right;

@end

NS_ASSUME_NONNULL_END
