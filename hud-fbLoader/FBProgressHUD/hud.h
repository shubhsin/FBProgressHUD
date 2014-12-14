//
//  hud.h
//  hud-fbLoader
//
//  Created by Shubham Sorte on 13/12/14.
//  Copyright (c) 2014 Apps2eaze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "hudLoader.h"

@protocol FBHudLoaderDelegate <NSObject>

@end

@interface hud : NSObject

@property NSString * statusText;
-(void)showHudAddedToView :(UIView*)view;
-(void)hideFromView:(UIView*)view;

@end
