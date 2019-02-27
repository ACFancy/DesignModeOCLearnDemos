//
//  IUserInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IUserInfo_h
#define IUserInfo_h

@protocol IUserInfo <NSObject>

- (NSString *)fetchUserName;

- (NSString *)fetchHomeAddress;

- (NSString *)fetchMobileNumber;

- (NSString *)fetchOfficeTelNumber;

- (NSString *)fetchJobPosition;

- (NSString *)fetchHomeTelNumber;

@end

#endif /* IUserInfo_h */
