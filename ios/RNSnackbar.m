//
//  RNSnackbar.m
//  React-Native-Snackbar
//
//  Created by Remi Santos on 13/04/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RNSnackbar.h"
#import "RNSnackBarView.h"
@implementation RNSnackbar

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(show:(NSDictionary *)options callback:(RCTResponseSenderBlock)callback)
{  
  dispatch_async(dispatch_get_main_queue(), ^{
    [RNSnackBarView showWithOptions:options andCallback:^{
      callback(@[]);
    }];
  });
}

- (NSDictionary *)constantsToExport
{
    return @{
             @"LENGTH_INDEFINITE": @-2,
             @"LENGTH_LONG": @0,
             @"LENGTH_SHORT": @-1
            };
}
@end
