//
//  IReceiver.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IReceiver_h
#define IReceiver_h

@protocol IReceiver <NSObject>

- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to;

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to;

@end

#endif /* IReceiver_h */
