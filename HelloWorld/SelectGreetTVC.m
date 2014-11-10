//
//  SelectGreetTVC.m
//  HelloWorld
//
//  Created by Diego Mazzone on 10/11/14.
//  Copyright (c) 2014 AppleMVD. All rights reserved.
//

#import "SelectGreetTVC.h"
#import "SayHiVC.h"

@interface SelectGreetTVC ()

@property (nonatomic, strong) NSArray *greets;

@end

@implementation SelectGreetTVC

- (void)viewDidLoad
{
    self.greets = @[@"Hola, <nombre>", @"Buenos días, <nombre>"];
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.greets count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Identifier = @"GreetCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = self.greets[indexPath.row];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SayHi"]) {
        if ([segue.destinationViewController isKindOfClass:[SayHiVC class]]) {
            SayHiVC *sayHiVC = (SayHiVC *)segue.destinationViewController;
            sayHiVC.greet = [self.tableView cellForRowAtIndexPath:[self.tableView indexPathForSelectedRow]].textLabel.text;
        }
    }
    
}


@end
