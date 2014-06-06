//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Bharti Agrawal on 6/4/14.
//  Copyright (c) 2014 Yahoo Inc. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
- (IBAction)onTap:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Settings";
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger tipCell = [defaults integerForKey:@"defTipCell"];
    self.defaultTipControl.selectedSegmentIndex = tipCell;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    NSInteger tipCell = self.defaultTipControl.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:tipCell forKey:@"defTipCell"];
    [defaults synchronize];
}
@end
