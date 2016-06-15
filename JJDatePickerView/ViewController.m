//
//  ViewController.m
//  JJDatePickerView
//
//  Created by 金晓浩 on 16/6/15.
//  Copyright © 2016年 XiaoHaoJin. All rights reserved.
//

#import "ViewController.h"
#import "JJDatePickerView.h"

@interface ViewController ()

//@property (nonatomic, strong) JJDatePickerView *datePicker;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy.MM.dd hh:mm:ss"];
    NSString *dateTime = [formatter stringFromDate:[NSDate date]];
    
    [JJDatePickerView showFromView:self.view title:dateTime didSelectedBlock:^(NSString *yearString, NSString *monthStrig, NSString *dayString) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
