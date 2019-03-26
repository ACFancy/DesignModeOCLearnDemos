//
//  UserProvider.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUserProvider.h"

NS_ASSUME_NONNULL_BEGIN

@class User;
@interface UserProvider : NSObject <IUserProvider>

- (instancetype)initWithUserList:(NSArray<User *> *)userList;

@end

NS_ASSUME_NONNULL_END
