//
//  IOuterUserBaseInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IOuterUserBaseInfo_h
#define IOuterUserBaseInfo_h

/*
 系统这样设计是否合理呢？合理，绝对合理！想想单一职责原则是怎么说的，类和接口要保持职责单一，在实际的应用中类可以有多重职责，但是接口一定要职责单一，因此，我们上面拆分接口的假想也是非常合乎逻辑的。
 */

@protocol IOuterUserBaseInfo <NSObject>

- (NSDictionary *)fetchUserBaseInfo;

@end

#endif /* IOuterUserBaseInfo_h */
