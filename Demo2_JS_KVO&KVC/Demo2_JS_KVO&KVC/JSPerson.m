//
//  JSPerson.m
//  Demo2_JS_KVO&KVC
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSPerson.h"

@implementation JSPerson
-(instancetype)init{
    self=[super init];
    if (self) {
        [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(ageChange) userInfo:nil repeats:YES];
    }
    return self;
}
-(void)ageChange{
    self.age+=1;
}
@end
