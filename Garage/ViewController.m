//
//  ViewController.m
//  Garage
//
//  Created by Administrator on 3/1/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "EditSettingsViewController.h"
@import CoreData;

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self.goButton setBackgroundImage:[UIImage imageNamed:@"myhand0.jpg"] forState:UIControlStateNormal];
    [self.goButton setBackgroundImage:[UIImage imageNamed:@"moby1.png"] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButton:(id)sender {
    
    
    [self.goButton setBackgroundImage:[UIImage animatedImageNamed:@"moby" duration:1.0] forState:UIControlStateNormal];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (appDelegate.setting!= nil){
        
        NSURLSession *session = [NSURLSession sharedSession];
        
        NSURL * url = [NSURL URLWithString:[appDelegate.setting toString]];
        
        NSURLSessionDataTask * dataTask = [session dataTaskWithURL:url
                                                 completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                     
                                                     [self.goButton setBackgroundImage:[UIImage imageNamed:@"moby1.png"] forState:UIControlStateNormal];
                                                     
                                                     if(error == nil)
                                                     {
                                                         NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                         NSLog(@"Data = %@",text);
                     
                                                     }
                                                 }];
        [dataTask resume];
    }
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    EditSettingsViewController *source = [segue sourceViewController];
    
    if (source.setting != nil)
    {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate saveSettings:source.setting];
    }
}

@end
