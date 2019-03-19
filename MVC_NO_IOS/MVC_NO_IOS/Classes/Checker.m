//
//  Checker.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "Checker.h"

@interface Checker ()

@property (nonatomic, strong) id<IXmlValidate> validate;

@end

@implementation Checker

- (instancetype)initWithValidate:(id<IXmlValidate>)validate
{
    if (self = [super init]) {
        _validate = validate;
    }
    return self;
}

- (BOOL)check
{
    return [_validate validate:_xmlPath];
}

- (void)update:(NSObject *)ob arg1:(NSObject *)arg1
{
    ////检查是否符合条件
    arg1 = @([self check]);
}

@end
