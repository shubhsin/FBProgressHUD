!["GIF"](https://raw.githubusercontent.com/shubhsin/FBProgressHUD/master/crop.gif)

FBProgressHUD is a Facebook Messenger style Async Loader for iOS.

##Usage - 
1. Add the folder FBProgressHUD in your Xcode Project.
2. `#import hud.h` in your controller file.
3. Use
```objective-c
    hud * myHud;
    myHud = [[hud alloc]init];
    [myHud showHudAddedToView:self.view];
```
* You can use the 'statusText' Property to change the text of Label.
5. Use 
```objective-c
    [myHud hideFromView:self.view];
```
to hide after the request is completed.
