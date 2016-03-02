//
//  ViewController.m
//  AutoreleasePoolDemo
//
//  Created by ranwenjie on 16/3/2.
//  Copyright © 2016年 ranwenjie. All rights reserved.
//

#import "ViewController.h"

@interface A : NSObject
@property(nonatomic,retain) NSString *name;
@end

@implementation A

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    A *a = [[A alloc] init];
//    [[a autorelease] autorelease];
    
    
    //不会崩溃
    NSString *str = [[[[NSString alloc]init]autorelease]autorelease];
   // str = @"hii";
    NSLog(@"%@",str);
    
    NSString *str2 = [[NSString alloc] initWithString:@"123"];
    [[str2 autorelease] autorelease];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
