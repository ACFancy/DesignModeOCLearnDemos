//
//  AOrSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsCompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

// 或规格书
@interface AOrSpecification : AbsCompositeSpecification

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithLeft:(id<ISpecification>)left right:(id<ISpecification>)right;

@end

NS_ASSUME_NONNULL_END
