//
//  JSPerson.h
//  Demo2_JS_KVO&KVC
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface JSPerson : NSObject
@property(nonatomic,strong)JSPerson* father;
@property(nonatomic,copy)NSString* name;
@property(nonatomic)int age;
@end
