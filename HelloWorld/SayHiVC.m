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
    self.sayHiLabel.text = self.greet;
    [super viewDidLoad];
}

- (void)setGreet:(NSString *)greet
{
    _greet = greet;
    self.sayHiLabel.text = greet;
}

@end
