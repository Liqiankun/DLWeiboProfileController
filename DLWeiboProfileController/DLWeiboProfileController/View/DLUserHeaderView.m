//
//  FTUserHeaderView.m
//  foundertimeIOS
//
//  Created by FT_David on 2017/4/7.
//  Copyright © 2017年 Benjamin Gordon. All rights reserved.
//

#import "DLUserHeaderView.h"



@interface DLUserHeaderView()

@property (weak, nonatomic) IBOutlet UIImageView *userAvatarImageView;



@end

@implementation DLUserHeaderView

+(DLUserHeaderView *)userHeaderView
{
    return [[[NSBundle mainBundle] loadNibNamed:@"DLUserHeaderView" owner:nil options:nil] firstObject];
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.userAvatarImageView.layer.cornerRadius = 80 / 2.0;
    self.userAvatarImageView.layer.borderWidth = 1;
    self.userAvatarImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.userAvatarImageView.layer.masksToBounds = YES;
}

- (IBAction)tapOnImageView:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(userHeaderViewButtonDidClick:)]) {
        [self.delegate userHeaderViewButtonDidClick:self];
    }
}

- (IBAction)buttonAction:(id)sender {
    
  
}

@end
