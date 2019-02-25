//
//  Client.h
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Mail;
@interface Client : NSObject

+ (void)execute;

+ (void)sendMail:(Mail *)mail;

+ (NSString *)fetchRandString:(NSInteger)maxLength;

@end

NS_ASSUME_NONNULL_END
