//
//  ViewController.m
//  DLWeiboProfileController
//
//  Created by FT_David on 2017/4/9.
//  Copyright © 2017年 FT_David. All rights reserved.
//

#import "ProfileViewController.h"
#import "PersonalCenterController.h"
@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 300, 70)];
    [button setTitle:@"微博个人主页" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(gotoProfile) forControlEvents:UIControlEventTouchUpInside];
    button.center = CGPointMake(self.view.center.x, self.view.center.y - 64);
    [self.view addSubview:button];
}

-(void)gotoProfile {
    PersonalCenterController *personalCenter = [[PersonalCenterController alloc] init];
    personalCenter.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:personalCenter animated:YES];
}


@end
