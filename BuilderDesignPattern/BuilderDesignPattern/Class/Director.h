//
//  Director.h
//  BuilderDesignPattern
//
//  Created by User on 2019/2/21.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class BenzModel, BMWModel;

@interface Director : NSObject

- (BenzModel *)getABenzModel;

- (BenzModel *)getBBenzModel;

- (BMWModel *)getCBMWModel;

- (BMWModel *)getDBMWModel;

@end

NS_ASSUME_NONNULL_END
