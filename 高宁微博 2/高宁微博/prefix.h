//
//  prefix.h
//  高宁微博
//
//  Created by gaoning on 15/5/21.
//  Copyright (c) 2015年 GN. All rights reserved.
//

#ifndef _____prefix_h
#define _____prefix_h

#import "UIView+Extension.h"

//RGB颜色
#define GNColor(r,g,b)[UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0 ]


//随机色
#define GNRandomColor GNColor (arc4random_uniform(256) ,arc4random_uniform(256) ,arc4random_uniform(256))


#endif
