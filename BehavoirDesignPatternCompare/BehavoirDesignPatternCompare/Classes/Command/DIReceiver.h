//
//  DIReceiver.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef DIReceiver_h
#define DIReceiver_h

//依照职责设计的接收者接口
@protocol DIReceiver <NSObject>

- (BOOL)zipExecWithSource:(NSString *)source to:(NSString *)to;

- (BOOL)gzipExecWithSource:(NSString *)source to:(NSString *)to;

@end

#endif /* DIReceiver_h */
