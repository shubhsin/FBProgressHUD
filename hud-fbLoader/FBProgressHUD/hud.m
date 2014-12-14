//
//  hud.m
//  hud-fbLoader
//
//  Created by Shubham Sorte on 13/12/14.
//  Copyright (c) 2014 Apps2eaze. All rights reserved.
//

#import "hud.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface hud()

@property  hudLoader * hud;


-(void)hide:(hudLoader*)presentHud from:(UIView*)view;

@end

@implementation hud

-(void)showHudAddedToView:(UIView *)view
{
    _hud = [[hudLoader alloc]init];
    NSArray * nib = [[NSBundle mainBundle] loadNibNamed:@"loader-view" owner:self options:nil];
    _hud = [nib objectAtIndex:0];
    _hud.statusLabel.text =_statusText;
    [view addSubview:_hud];
    [UIView animateWithDuration:1
                          delay:0
         usingSpringWithDamping:0.8
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _hud.frame = CGRectMake(0, 64, view.frame.size.width, 40);
    } completion:nil];
    

}

-(void)hideFromView:(UIView*)view
{
    [self hide:_hud from:view];
}

-(void)hide:(hudLoader*)presentHud from:(UIView*)view
{
    _hud.backgroundColor = UIColorFromRGB(0x00d774);
    presentHud = _hud;
    presentHud.statusLabel.text = _statusText;
    [UIView animateWithDuration:1
                          delay:1
         usingSpringWithDamping:0.8
          initialSpringVelocity:0
                        options:UIViewAnimationOptionCurveEaseInOut animations:^{
        presentHud.frame = CGRectMake(0,24, view.frame.size.width, 40);
    } completion:^(BOOL finished) {
            [presentHud removeFromSuperview];
        _hud = nil;
    }];

    
}



@end
