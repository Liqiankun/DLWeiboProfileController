//
//  FTUserHeaderView.m
//  foundertimeIOS
//
//  Created by FT_David on 2017/4/7.
//  Copyright © 2017年 Benjamin Gordon. All rights reserved.
//

#import "DLUserHeaderView.h"



@interface DLUserHeaderView()




@end

@implementation DLUserHeaderView

+(DLUserHeaderView *)userHeaderView
{
    return [[[NSBundle mainBundle] loadNibNamed:@"DLUserHeaderView" owner:nil options:nil] firstObject];
}


- (IBAction)buttonAction:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(userHeaderViewButtonDidClick:)]) {
        [self.delegate userHeaderViewButtonDidClick:self];
    }
}

@end
