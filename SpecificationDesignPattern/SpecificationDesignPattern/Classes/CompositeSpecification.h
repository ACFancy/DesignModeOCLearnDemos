//
//  CompositeSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUserSpecification.h"

NS_ASSUME_NONNULL_BEGIN

@interface CompositeSpecification : NSObject <IUserSpecification>

+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
