//
//  IOSNativeToast.h
//  RNNativeToastLibrary
//
//  Created by Roi Berlin on 17/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IOSNativeToast : NSObject
-(void) showToast:(NSString*) msg;
-(void) showToast:(NSString*) msg duration:(double) duration;
@end

NS_ASSUME_NONNULL_END
