//
//  IOuterUserHomeInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IOuterUserHomeInfo_h
#define IOuterUserHomeInfo_h

@protocol IOuterUserHomeInfo <NSObject>

- (NSDictionary *)fetchUserHomeInfo;

@end

#endif /* IOuterUserHomeInfo_h */
