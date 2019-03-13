//
//  DnsServer.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Recorder;
@interface DnsServer : NSObject

- (Recorder *)resolve:(NSString *)domain;

- (void)setUpperServer:(DnsServer *)upperServer;

- (BOOL)isLocal:(NSString *)domain;

- (Recorder *)echo:(NSString *)domain;

@end

NS_ASSUME_NONNULL_END
