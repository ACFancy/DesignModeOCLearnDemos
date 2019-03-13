//
//  ODnsServer.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IObserver.h"

NS_ASSUME_NONNULL_BEGIN

@class ORecorder, ODnsServer;
@interface ODnsServer : NSObject <IObserver>

- (void)setUpperServer:(ODnsServer *)upperServer;

- (BOOL)isLocal:(ORecorder *)recorder;

- (void)sign:(ORecorder *)recorder;

@end

NS_ASSUME_NONNULL_END
