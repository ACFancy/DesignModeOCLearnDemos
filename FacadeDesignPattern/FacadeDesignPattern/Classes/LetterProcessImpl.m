//
//  LetterProcessImpl.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LetterProcessImpl.h"

@implementation LetterProcessImpl

- (void)writeContext:(NSString *)context
{
    NSLog(@"%s%@", __FUNCTION__, context);
}

- (void)fillEnvelop:(NSString *)address
{
    NSLog(@"%s%@", __FUNCTION__, address);
}

- (void)letterInotoEnvelope
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)sendLetter
{
    NSLog(@"%s", __FUNCTION__);
}


@end
