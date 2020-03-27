//
//  ViewController.m
//  Demo
//
//  Created by wealon on 2019/12/30.
//  Copyright © 2019 wealon. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.testLabel];
    self.testLabel.text = @"Hello Jenkins";
    
    [self.testLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
    
}

- (UILabel *)testLabel
{
    if (_testLabel == nil) {
        UILabel *label = [[UILabel alloc] init];
        label.font = [UIFont systemFontOfSize:30];
        label.backgroundColor = [UIColor yellowColor];
        _testLabel = label;
    }
    return _testLabel;
}


@end
