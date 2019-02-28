//
//  IRoot.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IRoot_h
#define IRoot_h

@protocol IBranch, ILeaf;
@protocol IRoot <NSObject>

- (NSString *)fetchInfo;

- (void)addBranch:(id<IBranch>)branch;

- (void)addLeaf:(id<ILeaf>)leaf;

- (NSMutableArray *)fetchSubordinateInfo;

@end

#endif /* IRoot_h */
