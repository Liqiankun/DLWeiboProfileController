//
//  DLUserPageNavBar.m
//  foundertimeIOS
//
//  Created by DL_David on 2017/4/7.
//  Copyright © 2017年 Benjamin Gordon. All rights reserved.
//

#import "DLUserPageNavBar.h"


@interface DLUserPageNavBar ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingView;


@end

@implementation DLUserPageNavBar



-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        self.userInteractionEnabled = YES;

    }
    return self;
}

- (IBAction)buttonAction:(UIButton *)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(userPagNavBar:didClickButton:)]) {
        [self.delegate userPagNavBar:self didClickButton:sender.tag];
    }
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.backButton.tag = DLUserPageBackButton;
    self.nameLabel.hidden = YES;
    self.loadingView.hidden = YES;
}


+(DLUserPageNavBar *)userPageNavBar
{
    return [[[NSBundle mainBundle] loadNibNamed:@"DLUserPageNavBar" owner:nil options:nil] lastObject];
}

-(void)setDl_alpha:(CGFloat)dl_alpha
{
    _dl_alpha = dl_alpha;
    self.backImageView.alpha = dl_alpha;
    self.nameLabel.hidden = !(dl_alpha >= 0.99);
}


/**
 将要刷新
 */
-(void)dl_willRefresh
{
    self.moreButton.hidden = YES;
    self.loadingView.hidden = NO;
}

/**
 刷新
 */
-(void)dl_refresh
{
    self.moreButton.hidden = YES;
    self.loadingView.hidden = NO;
    [self.loadingView startAnimating];
}

/**
 结束刷新
 */
-(void)dl_endRefresh
{
    self.moreButton.hidden = NO;
    self.loadingView.hidden = YES;
    [self.loadingView stopAnimating];
}

@end
