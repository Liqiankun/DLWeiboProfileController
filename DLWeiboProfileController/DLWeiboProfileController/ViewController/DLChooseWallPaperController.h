//
//  DLChooseWallPaperController.h
//  DLWeiboProfileController
//
//  Created by FT_David on 2017/4/16.
//  Copyright © 2017年 FT_David. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DLChooseWallPaperControllerDelegate <NSObject>

-(void)wallPageDidChooseWallPager:(UIImage *)image;

@end

@interface DLChooseWallPaperController : UIViewController

@property(nonatomic,weak)id<DLChooseWallPaperControllerDelegate> delegate;

@end
