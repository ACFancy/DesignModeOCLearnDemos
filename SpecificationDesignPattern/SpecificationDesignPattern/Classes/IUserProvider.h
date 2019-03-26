//
//  IUserProvider.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IUserProvider_h
#define IUserProvider_h

@protocol IUserSpecification;
@protocol IUserProvider <NSObject>

- (NSArray *)findUserByNameEqual:(NSString *)name;

- (NSArray *)findUserByAgeThan:(NSInteger)age;

- (NSArray *)findUser:(id<IUserSpecification>)userSpec;

@end

#endif /* IUserProvider_h */
