//
//  Project.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IProject.h"

NS_ASSUME_NONNULL_BEGIN

//定义了一个接口，面向接口编程嘛，当然要定义接口了，然后看看实现类
@interface Project : NSObject <IProject>

- (instancetype)initWithName:(NSString *)name
                         num:(NSInteger)num
                        cost:(NSInteger)cost;

@end

NS_ASSUME_NONNULL_END
