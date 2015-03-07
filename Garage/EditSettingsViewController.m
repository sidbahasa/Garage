//
//  EditSettingsViewController.m
//  Garage
//
//  Created by Administrator on 3/3/15.
//  Copyright (c) 2015 Administrator. All rights reserved.
//

#import "EditSettingsViewController.h"
#import "Settings.h"
#import "AppDelegate.h"
@import CoreData;

@interface EditSettingsViewController ()
@property (strong) NSMutableArray *settings;
@property (weak, nonatomic) IBOutlet UITextField *protocol;
@property (weak, nonatomic) IBOutlet UITextField *host;
@property (weak, nonatomic) IBOutlet UITextField *port;
@property (weak, nonatomic) IBOutlet UITextField *pin;
@end

@implementation EditSettingsViewController

- (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.setting = [[Settings alloc]init];
    
    if (appDelegate.setting != nil)
    {
        self.setting.protocol = appDelegate.setting.protocol;
        self.setting.host = appDelegate.setting.host;
        self.setting.port = appDelegate.setting.port;
        self.setting.pin = appDelegate.setting.pin;

        self.protocol.text = appDelegate.setting.protocol;
        self.host.text = appDelegate.setting.host;
        self.port.text = appDelegate.setting.port;
        self.pin.text = appDelegate.setting.pin;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (self.setting != nil)
    {
        if (sender == self.saveButton)
        {
            self.setting.protocol = self.protocol.text;
            self.setting.port = self.port.text;
            self.setting.host = self.host.text;
            self.setting.pin = self.pin.text;
        }
        else{
            self.protocol.text = self.setting.protocol;
            self.port.text = self.setting.port;
            self.host.text = self.setting.host;
            self.pin.text = self.setting.pin;
        }
    }
}

@end
