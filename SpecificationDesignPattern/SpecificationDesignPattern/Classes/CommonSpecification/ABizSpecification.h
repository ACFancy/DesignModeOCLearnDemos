//
//  ABizSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsCompositeSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface ABizSpecification : AbsCompositeSpecification

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithObj:(NSObject *)obj;

@end

NS_ASSUME_NONNULL_END
