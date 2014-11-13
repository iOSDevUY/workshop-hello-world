//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Diego Mazzone on 26/06/14.
//  Copyright (c) 2014 AppleMVD. All rights reserved.
//

#import "HelloWorldViewController.h"
#import "SelectGreetTVC.h"

@interface HelloWorldViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation HelloWorldViewController

#pragma mark - Target Actions

- (IBAction)sayHi
{
    NSString *name = self.nameTextField.text;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"This demo is awesome!"
                                                        message:[NSString stringWithFormat:@"Hi, %@", name]
                                                       delegate:self
                                              cancelButtonTitle:@"Hi =)"
                                              otherButtonTitles:nil];
    
    [alertView show];
    
    NSLog(@"Log: %@", @"Say hi! button pressed");
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SelectGreeting"]) {
        
        if ([segue.destinationViewController isKindOfClass:[SelectGreetTVC class]]) {
            
            SelectGreetTVC *sgtvc = (SelectGreetTVC *)segue.destinationViewController;
            sgtvc.name = self.nameTextField.text;
            
        }
        
    }
}

@end
