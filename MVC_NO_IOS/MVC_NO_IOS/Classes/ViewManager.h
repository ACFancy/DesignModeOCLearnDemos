//
//  ViewManager.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewManager : NSObject

- (instancetype)initWithActionName:(NSString *)actionName;

- (NSString *)getViewPath:(NSString *)result;

@end

NS_ASSUME_NONNULL_END
