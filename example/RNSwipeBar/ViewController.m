//
//  ViewController.m
//  RNswipeBar
//
//  Created by Ryan Nystrom on 4/14/12.
//  Copyright (c) 2012 Ryan Nystrom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize swipeBar = _swipeBar;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    RNSwipeBar *swipeBar = [[RNSwipeBar alloc] initWithMainView:[self view]];
    [swipeBar setPadding:20.0f];
    [self setSwipeBar:swipeBar];
    [[self view] addSubview:[self swipeBar]];
    
    RNBarView *barView = [[[NSBundle mainBundle] loadNibNamed:@"RNBarView" owner:self options:nil] lastObject];
    [barView setDelegate:self];
    [swipeBar setView:barView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)mainButtonWasPressed:(id)sender
{
    [self.swipeBar toggle];
}

@end
