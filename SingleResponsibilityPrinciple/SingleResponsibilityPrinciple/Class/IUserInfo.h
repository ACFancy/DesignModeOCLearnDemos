//
//  IUserInfo.h
//  SingleResponsibilityPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef IUserInfo_h
#define IUserInfo_h
#import <Foundation/Foundation.h>

@protocol IUserInfo <NSObject>

- (void)setUserID:(NSString *)userId;

- (NSString *)getUserID;



@end

@protocol IUserManager <NSObject>

- (void)changeUserName:(NSString *)userName;

- (void)changeHomeAddress:(NSString *)homeAddress;

- (void)changeOfficeTel:(NSString *)telNumber;

@end

#endif /* IUserInfo_h */
