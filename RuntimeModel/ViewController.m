//
//  ViewController.m
//  RuntimeModel
//
//  Created by tztddong on 16/9/27.
//  Copyright © 2016年 dongjiangpeng. All rights reserved.
//

#import "ViewController.h"
#import "DictModel.h"
#import "NSObject+RuntimeModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnclick:(id)sender {
    
    NSDictionary *dict = @{
                           @"name" : @"Jack",
                           @"icon" : @"lufy.png",
                           @"age" : @"20",
                           @"height" : @1.55,
                           @"money" : @"100.9",
                           @"sex" : @"M",
                           @"gay" : @"1"
                           };
    NSDictionary *dict1 = @{
                           @"name" : @"Jack1",
                           @"icon" : @"1lufy.png",
                           @"age" : @"201",
                           @"height" : @11.55,
                           @"money" : @"1100.9",
                           @"sex" : @"M1",
                           @"gay" : @"11"
                           };
    DictModel *model = [DictModel toModelWithDict:dict];
    NSLog(@"%@",model);
    NSArray *dicts = @[dict,dict1];
    NSArray *models = [DictModel toModelWithDictArray:dicts];
    NSLog(@"%@",models);
}

@end
