//
//  IAgorithm.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IAlgorithm_h
#define IAlgorithm_h

@protocol IAlgorithm <NSObject>

- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to;

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to;

@end

#endif /* IAgorithm_h */
