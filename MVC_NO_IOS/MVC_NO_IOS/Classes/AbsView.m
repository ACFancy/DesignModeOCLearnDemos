//
//  AbsView.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsView.h"
#import "AbsLangData.h"

@interface AbsView ()

@property (nonatomic, strong) AbsLangData *langData;

@end

@implementation AbsView

- (instancetype)initWithLangData:(AbsLangData *)langData
{
    if (self = [super init]) {
        _langData = langData;
    }
    return self;
}

- (NSString *)getURI
{
    return nil;
}

- (void)assemble
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}


@end
