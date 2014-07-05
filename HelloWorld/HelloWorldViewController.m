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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target Actions

- (IBAction)greet
{
    
    NSString *name = self.nameTextField.text;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Saludo" message:[NSString stringWithFormat:@"Hola, %@", name] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alertView show];
}

@end
