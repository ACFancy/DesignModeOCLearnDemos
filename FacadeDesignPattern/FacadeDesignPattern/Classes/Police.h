//
//  Police.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IletterProcess.h"

NS_ASSUME_NONNULL_BEGIN

@interface Police : NSObject

- (void)checkLetter:(id<ILetterProcess>)letterProcess;

@end

NS_ASSUME_NONNULL_END
