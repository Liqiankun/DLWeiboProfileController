//
//  BaseTableViewController.m
//  PersonalHomePageDemo
//
//  Created by Kegem Huang on 2017/3/15.
//  Copyright © 2017年 huangkejin. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

//判断手指是否离开
@property (nonatomic, assign) BOOL isTouch;

@end

@implementation BaseTableViewController

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.showsVerticalScrollIndicator = NO;
}


-(void)dl_refresh
{
    if (!self.isRefreshing) {
        self.isRefreshing = YES;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (self.delegate && [self.delegate respondsToSelector:@selector(dl_viewControllerDidFinishRefreshing:)]) {
                [self.delegate dl_viewControllerDidFinishRefreshing:self];
                self.isRefreshing = NO;
            }
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    self.isTouch = YES;
}

///用于判断手指是否离开了 要做到当用户手指离开了，tableview滑道顶部，也不显示出主控制器
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    NSLog(@"手指离开了");
    self.isTouch = NO;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (!self.canScroll) {
        [scrollView setContentOffset:CGPointZero];
    }
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY<0) {

        [[NSNotificationCenter defaultCenter] postNotificationName:@"kLeaveTopNtf" object:@1];
        self.canScroll = NO;
        scrollView.contentOffset = CGPointZero;
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

@end
