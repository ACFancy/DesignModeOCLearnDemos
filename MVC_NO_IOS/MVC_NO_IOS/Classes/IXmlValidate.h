//
//  IXmlValidate.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IXmlValidate_h
#define IXmlValidate_h

@protocol IXmlValidate <NSObject>

- (BOOL)validate:(NSString *)xmlPath;

@end

#endif /* IXmlValidate_h */
