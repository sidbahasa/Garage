//
//  Settings.h
//  Garage
//
//  Created by Administrator on 3/3/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Settings : NSObject

@property NSString *protocol;
@property NSString *port;
@property NSString *host;
@property NSString *pin;

- (NSString*)toString;

@end
