//
//  ContentViewCell.h
//  PersonalHomePageDemo
//
//  Created by Kegem Huang on 2017/3/15.
//  Copyright © 2017年 huangkejin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ContentViewCell;

@protocol ContentViewCellDelegate <NSObject>

-(void)dl_contentViewCellDidRecieveFinishRefreshingNotificaiton:(ContentViewCell *)cell;

@end


@interface ContentViewCell : UITableViewCell

//cell注册
+ (void)regisCellForTableView:(UITableView *)tableView;
+ (ContentViewCell *)dequeueCellForTableView:(UITableView *)tableView;
//子控制器是否可以滑动  YES可以滑动
@property (nonatomic, assign) BOOL canScroll;
//外部segment点击更改selectIndex,切换页面
@property (assign, nonatomic) NSInteger selectIndex;
@property(nonatomic,weak)id<ContentViewCellDelegate> delegate;

//创建pageViewController
- (void)setPageView;

-(void)dl_refresh;

@end
