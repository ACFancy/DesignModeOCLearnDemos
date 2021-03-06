//
//  IletterProgress.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IletterProcess_h
#define IletterProcess_h

@protocol ILetterProcess <NSObject>

- (void)writeContext:(NSString *)context;

- (void)fillEnvelop:(NSString *)address;

- (void)letterInotoEnvelope;

- (void)sendLetter;

@end

#endif /* IletterProgress_h */
