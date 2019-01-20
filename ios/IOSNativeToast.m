//
//  IOSNativeToast.m
//  RNNativeToastLibrary
//
//  Created by Roi Berlin on 17/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "IOSNativeToast.h"
#import "UIApplication+RootViewController.h"

@implementation IOSNativeToast

static double const DEFAULT_TOAST_DURATION = 3.5;

-(void) showToast:(NSString*) msg
{
    [self showToast:msg duration:DEFAULT_TOAST_DURATION];
}

-(void) showToast:(NSString*) msg duration:(double) duration
{
    UIViewController* rootVC = [[UIApplication sharedApplication]getRootViewController];
    if (rootVC == nil)
    {
        return;
    }
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:nil message:msg preferredStyle:UIAlertControllerStyleActionSheet];
    
    [rootVC presentViewController:alert animated:YES completion:nil];
    
    [self closeToast:alert duration:duration];
}

- (void) closeToast:(UIAlertController*) alert duration:(double) duration
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:true completion:nil];
    });
}

@end
