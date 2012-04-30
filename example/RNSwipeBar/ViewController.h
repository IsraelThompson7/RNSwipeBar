//
//  ViewController.h
//  RNswipeBar
//
//  Created by Ryan Nystrom on 4/14/12.
//  Copyright (c) 2012 Ryan Nystrom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RNSwipeBar.h"
#import "RNBarView.h"

@interface ViewController : UIViewController
<RNBarViewDelegate>

@property (strong) RNSwipeBar *swipeBar;

@end
