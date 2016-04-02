//
//  ViewController.m
//  Demo2_JS_KVO&KVC
//
//  Created by  江苏 on 16/3/15.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)JSPerson* p;
@property (strong, nonatomic) IBOutlet UILabel *ageLbel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JSPerson* person=[[JSPerson alloc]init];
    self.p=[[JSPerson alloc]init];
//    person.name=@"张三";
//    person.age=18;
//    NSLog(@"%@",person.name);
    person.father=[[JSPerson alloc]init];
//    person.father.name=@"张四";
    [person setValue:@"张三" forKeyPath:@"father.name"];
    NSLog(@"%@",[person valueForKeyPath:@"father.name"]);
    [person addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    JSPerson* p=object;
    self.ageLbel.text=[NSString stringWithFormat:@"%d",p.age];
}
-(void)dealloc{
    [self.p removeObserver:self forKeyPath:@"age"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
