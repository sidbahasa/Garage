//
//  EditSettingsViewController.h
//  Garage
//
//  Created by Administrator on 3/3/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"

@interface EditSettingsViewController : UIViewController
@property Settings *setting;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end
