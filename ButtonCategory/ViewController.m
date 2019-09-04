//
//  ViewController.m
//  ButtonCategory
//
//  Created by 丁强 on 2019/9/3.
//  Copyright © 2019 丁强. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "DQButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    DQButton *dq_button = [DQButton buttonWithType:UIButtonTypeCustom];
    dq_button.backgroundColor = UIColor.groupTableViewBackgroundColor;
    [dq_button setImage:[UIImage imageNamed:@"lock"] forState:UIControlStateNormal];
    [dq_button setTitle:@"buttonbutton" forState:UIControlStateNormal];
    [dq_button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    dq_button.layoutType = DQImageTop;
    dq_button.space = 20;
    dq_button.alignment = DQAlignmentTop;
    dq_button.imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:dq_button];
    
    [dq_button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(100);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(300);
    }];
}


@end
