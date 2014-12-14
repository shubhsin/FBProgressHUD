//
//  ViewController.m
//  hud-fbLoader
//
//  Created by Shubham Sorte on 10/12/14.
//  Copyright (c) 2014 Apps2eaze. All rights reserved.
//

#import "ViewController.h"
#import "hud.h"

@interface ViewController ()
{
    hud * myHud;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}


-(void)viewWillAppear:(BOOL)animated
{
    
    myHud = [[hud alloc]init];
    myHud.statusText = @"Connecting...";
        
        [myHud showHudAddedToView:self.view];
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(hideTheHud) userInfo:nil repeats:NO];
    
    
}

-(void)hideTheHud
{
    myHud.statusText = @"Connected";
    [myHud hideFromView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
