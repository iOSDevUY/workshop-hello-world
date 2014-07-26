//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Diego Mazzone on 26/06/14.
//  Copyright (c) 2014 AppleMVD. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation HelloWorldViewController

#pragma mark - View Controller Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Target Actions

- (IBAction)sayhi
{
    NSString *name = self.nameTextField.text;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"This demo is awesome!"
                                                        message:[NSString stringWithFormat:@"Hi, %@", name]
                                                       delegate:self cancelButtonTitle:@"Hi"
                                              otherButtonTitles:nil];
    
    [alertView show];
    
    NSLog(@"Log: %@", @"Say hi! button pressed");
}

@end
