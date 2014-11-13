//
//  SayHiVC.m
//  HelloWorld
//
//  Created by Diego Mazzone on 10/11/14.
//  Copyright (c) 2014 AppleMVD. All rights reserved.
//

#import "SayHiVC.h"

@interface SayHiVC ()

@property (weak, nonatomic) IBOutlet UILabel *sayHiLabel;

@end

@implementation SayHiVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sayHiLabel.text = self.greeting;
}

- (void)setGreet:(NSString *)greeting
{
    _greeting = greeting;
    self.sayHiLabel.text = greeting;
}

@end
