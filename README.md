[![](https://www.dropbox.com/s/6bzk69o0lqj3qm1/crop.gif?dl=0)](https://www.dropbox.com/s/6bzk69o0lqj3qm1/crop.gif?dl=0)


FBProgressHUD is a Facebook Messenger style Async Loader for iOS.

##Usage - 
1. Add the folder FBProgressHUD in your Xcode Project.
2. #import hud.h in your controller file.
3.  
    ```objective-c
    hud * myHud;
    myHud = [[hud alloc]init];
    [myHud showHudAddedToView:self.view];
    ```
    
4. You can use the 'statusText' Property to change the text of Label.
5. Use 
    ```objective-c
    [myHud hideFromView:self.view] 
    ```
    to hide after the request is completed.

