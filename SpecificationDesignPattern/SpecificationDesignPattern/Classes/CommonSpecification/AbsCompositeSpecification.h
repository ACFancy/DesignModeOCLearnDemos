//
//  AbsCompositeSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISpecification.h"

NS_ASSUME_NONNULL_BEGIN
//抽象 规格书
@interface AbsCompositeSpecification : NSObject <ISpecification>

+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
