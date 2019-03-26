//
//  NotSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "CompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface NotSpecification : CompositeSpecification

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithSpec:(id<IUserSpecification>)spec;

@end

NS_ASSUME_NONNULL_END
