//
//  ANotSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsCompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

//非 规格书
@interface ANotSpecification : AbsCompositeSpecification

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithSpec:(id<ISpecification>)spec;

@end

NS_ASSUME_NONNULL_END
