//
//  Settings.m
//  Garage
//
//  Created by Administrator on 3/3/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import "Settings.h"

@implementation Settings

- (NSString*) toString {
    NSString *normPort = @"";
    
    NSString *urlString = [[[[[[self.protocol  stringByAppendingString:@":"] stringByAppendingString:normPort]stringByAppendingString:@"//"]stringByAppendingString:self.host]stringByAppendingString:@"/?"]stringByAppendingString:self.pin];
    return urlString;
}
@end
