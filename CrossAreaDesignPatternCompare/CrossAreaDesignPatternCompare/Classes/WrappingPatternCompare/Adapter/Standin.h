//
//  Standin.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IAStar.h"
#import "IActor.h"

NS_ASSUME_NONNULL_BEGIN

//Adapter
@interface Standin : NSObject <IAStar>

- (instancetype)initWithActor:(id<IActor>)actor;

@end

NS_ASSUME_NONNULL_END
