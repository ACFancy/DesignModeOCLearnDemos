//
//  IUserSpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IUserSpecification_h
#define IUserSpecification_h

@class User;
@protocol IUserSpecification <NSObject>

- (BOOL)isSatisfiedBy:(User *)user;

@optional
//功臣还是依赖于三个与或非 规格书，有了它们三个栋梁才能组合出一个精彩的条件查询世界
- (id<IUserSpecification>) AND:(id<IUserSpecification>)userSpec;

- (id<IUserSpecification>) OR:(id<IUserSpecification>)userSpec;

- (id<IUserSpecification>) NOT;

@end

#endif /* IUserSpecification_h */
