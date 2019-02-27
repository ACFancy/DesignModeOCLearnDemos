//
//  IOutOfficeInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IOuterOfficeInfo_h
#define IOuterOfficeInfo_h

@protocol IOuterOfficeInfo <NSObject>

- (NSDictionary *)fetchUserOfficeInfo;

@end

#endif /* IOutOfficeInfo_h */
