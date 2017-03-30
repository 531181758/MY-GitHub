//
//  ViewController.m
//  StarView
//
//  Created by sks on 15/10/15.
//  Copyright (c) 2015年 sks. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    StarRatingView *tempAtar = [[StarRatingView alloc]init];
    tempAtar.backgroundColor = [UIColor blackColor];
    tempAtar.imageWidth = 24.0;
    tempAtar.imageHeight = 22;
    tempAtar.imageCount = 5;
    tempAtar.isNeedHalf = YES;
    tempAtar.delegate = self;
    tempAtar.frame = CGRectMake(100, 100, tempAtar.imageWidth*5,tempAtar.imageHeight);
    [self.view addSubview:tempAtar];
    
}

/**
 *  @author Ezreal, 16-09-09 10:09:14
 *
 *  @brief 返回的协议方法
 *
 *  @param grade 返回的评星等级
 */
- (void)sendGrade:(NSString *)grade{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"alert" message:[NSString stringWithFormat:@" star is : %@",grade] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
