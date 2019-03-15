//
//  BMailServer.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class BMailTemplate;
@interface BMailServer : NSObject

@property (nonatomic, strong, readonly) BMailTemplate *m;

- (instancetype)initWithM:(BMailTemplate *)m;

- (void)sendMail;

@end

NS_ASSUME_NONNULL_END
