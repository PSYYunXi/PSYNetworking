//
//  ViewController.m
//  BoundleProject
//
//  Created by psylife-mini on 2020/1/19.
//  Copyright © 2020 psylife-mini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView * imageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.imageV = [[UIImageView alloc] init];
    self.imageV.frame = CGRectMake(0, 0, 100, 100);
    self.imageV.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.imageV];

    NSString * bundlePtah = [[NSBundle mainBundle] resourcePath];
    NSString * path = [bundlePtah stringByAppendingPathComponent:@"Settings.bundle"];
    self.imageV.image = [UIImage imageWithContentsOfFile:[path stringByAppendingPathComponent:@"CommonTest_nextBtn.png"]];
    
    NSString * filePath = [[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Setting.bundle"] stringByAppendingPathComponent:@"CommonTest_Null.png"];
    self.imageV.image = [UIImage imageWithContentsOfFile:filePath];
}



@end
