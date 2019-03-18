//
//  ProductEventType.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef ProductEventType_h
#define ProductEventType_h

/**
 事件类型

 - NEW_PRODUCT: 新建一个产品
 - DEL_PRODUCT: 删除一个产品
 - EDIT_PRODUCT: 修改一个产品
 - CLONE_PRODUCT: 克隆一个产品
 */
typedef NS_ENUM(NSUInteger, ProductEventType) {
    NEW_PRODUCT = 1,
    DEL_PRODUCT,
    EDIT_PRODUCT,
    CLONE_PRODUCT,
};

#endif /* ProductEventType_h */
