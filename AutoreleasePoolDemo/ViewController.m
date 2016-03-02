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
    
    A *a = [[A alloc] init];
    [[a autorelease] autorelease];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
