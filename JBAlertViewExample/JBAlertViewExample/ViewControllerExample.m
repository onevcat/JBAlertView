//
//  ViewControllerExample.m
//  JBAlertViewExample
//
//  Created by Jean-Baptiste Castro on 27/01/12.
//  Copyright (c) 2012 - jeanbaptistecastro.com - All rights reserved.
//

#import "ViewControllerExample.h"
#import "JBAlertView.h"

@implementation ViewControllerExample

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Show all alert

//Normal Type
- (IBAction)normalAlert:(id)sender
{
    [JBAlertView alertInView:self.view 
                      ofStyle:JBAlertViewStyleDefault 
                   withTitle:@"Default" 
                   andDetail:@"This is a default alert" 
                   hideAfter:2.0];
}

//Connection type
- (IBAction)connectionAlert:(id)sender
{
    [JBAlertView alertInView:self.view 
                      ofStyle:JBAlertViewStyleConnection 
                   withTitle:@"Connection" 
                   andDetail:@"This is a connection alert ..." 
                   hideAfter:3.0];
}

//Error type
- (IBAction)errorAlert:(id)sender
{
    [JBAlertView alertInView:self.view 
                      ofStyle:JBAlertViewStyleError 
                   withTitle:@"Error" 
                   andDetail:@"This is an error alert" 
                   hideAfter:2.0];
}

@end
