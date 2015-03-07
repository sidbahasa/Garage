//
//  ViewController.h
//  Garage
//
//  Created by Administrator on 3/1/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *goButton;

- (IBAction)goButton:(id)sender;
- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
@end

