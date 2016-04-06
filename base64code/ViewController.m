//
//  ViewController.m
//  base64code
//
//  Created by ZhaoNing on 16/4/6.
//  Copyright © 2016年 ZhaoNing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *testStr = @"TestBase64";
    
    NSData *testData = [testStr dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString *base64Str = [testData base64EncodedStringWithOptions:0];
    
    NSLog(@"%@", base64Str);
    
    NSData *decodeData = [[NSData alloc] initWithBase64EncodedString:base64Str options:0];
    
    NSString *decodeString = [[NSString alloc] initWithData:decodeData encoding:NSUTF8StringEncoding];
    NSLog(@"%@", decodeString);}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
