//
//  UIApplication+RootViewController.m
//  RNNativeToastLibrary
//
//  Created by Roi Berlin on 17/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "UIApplication+RootViewController.h"

@implementation UIApplication (RootViewController)

- (UIViewController* _Nullable) getRootViewController
{
    UIWindow* window = [self getDisplayedWindow];
    if (window == nil)
    {
        return nil;
    }
    
    return window.rootViewController;
}

- (UIWindow* _Nullable) getDisplayedWindow
{
    // get the key window
    UIWindow *window = [self keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        return window;
    }
    
    // get the first normal level window
    NSArray *windows = [self windows];
    for(window in windows) {
        if (window.windowLevel == UIWindowLevelNormal) {
            return window;
        }
    }
    
    return nil;
}

@end
