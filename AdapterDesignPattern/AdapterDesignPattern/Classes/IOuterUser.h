//
//  IOuterUser.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IOuterUser_h
#define IOuterUser_h

@protocol IOuterUser <NSObject>

- (NSDictionary *)fetchUserBaseInfo;

- (NSDictionary *)fetchUserOfficeInfo;

- (NSDictionary *)fetchUserHomeInfo;

@end

#endif /* IOuterUser_h */
