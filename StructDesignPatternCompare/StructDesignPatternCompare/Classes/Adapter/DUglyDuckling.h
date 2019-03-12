//
//  DUglyDuckling.h
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DWhiteSwan.h"
#import "IDuck.h"

NS_ASSUME_NONNULL_BEGIN

//Adapter
@interface DUglyDuckling : DWhiteSwan <IDuck>

@end

NS_ASSUME_NONNULL_END
