//
//  DLUserPageNavBar.h
//  foundertimeIOS
//
//  Created by DL_David on 2017/4/7.
//  Copyright © 2017年 Benjamin Gordon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DLUserPageNavBar;

typedef enum : NSUInteger {
    DLUserPageBackButton,
    DLUserPageMoreButton,
    DLUserPageContactButton,
} DLUserPageButtonType;


@protocol DLUserPageNavBarDelegate <NSObject>

-(void)userPagNavBar:(DLUserPageNavBar *)navBar didClickButton:(DLUserPageButtonType)buttonType;

@end


@interface DLUserPageNavBar : UIView


+(DLUserPageNavBar *)userPageNavBar;

@property (weak, nonatomic) IBOutlet UIImageView *backImageView;

@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *moreButton;

@property(nonatomic,weak)id<DLUserPageNavBarDelegate> delegate;

@property(nonatomic,assign)CGFloat dl_alpha;

@end
