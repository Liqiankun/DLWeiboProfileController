//
//  DLChooseWallPaperController.m
//  DLWeiboProfileController
//
//  Created by FT_David on 2017/4/16.
//  Copyright © 2017年 FT_David. All rights reserved.
//

#import "DLChooseWallPaperController.h"

@interface DLChooseWallPaperController ()

@end

@implementation DLChooseWallPaperController


-(instancetype)init{
    return [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"wallPaperController"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Change Cover";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(IBAction)buttonAction:(UIButton *)sender
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(wallPageDidChooseWallPager:)]) {
        [self.delegate wallPageDidChooseWallPager:sender.currentBackgroundImage];
    }
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
