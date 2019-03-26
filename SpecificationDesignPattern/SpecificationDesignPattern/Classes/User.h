//
//  User.h
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
