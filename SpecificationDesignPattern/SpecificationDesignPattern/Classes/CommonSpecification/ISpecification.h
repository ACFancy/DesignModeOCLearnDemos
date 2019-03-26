//
//  ISpecification.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef ISpecification_h
#define ISpecification_h

@protocol ISpecification <NSObject>

- (BOOL)isSatisfiedBy:(NSObject *)candidate;

- (id<ISpecification>)AND:(id<ISpecification>)spec;

- (id<ISpecification>)Or:(id<ISpecification>)spec;

- (id<ISpecification>)NOT;

@end

#endif /* ISpecification_h */
