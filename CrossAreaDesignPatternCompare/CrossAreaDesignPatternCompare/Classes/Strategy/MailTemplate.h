//
//  MailTemplate.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MailTemplate : NSObject

@property (nonatomic, strong) NSString *from;
@property (nonatomic, strong) NSString *to;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *context;

- (instancetype)initWithFrom:(NSString *)from
                          to:(NSString *)to
                     subject:(NSString *)subject
                     context:(NSString *)context;


@end

NS_ASSUME_NONNULL_END
