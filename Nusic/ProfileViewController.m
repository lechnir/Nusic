//
//  ProfileViewController.m
//  Nusic
//
//  Created by Mayank Jain on 6/2/13.
//  Copyright (c) 2013 Jake Lechnir. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize backgroundView;
@synthesize testLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipedScreen:)] ;
    swipeGesture.numberOfTouchesRequired = 1;
    swipeGesture.direction = (UISwipeGestureRecognizerDirectionRight);
    
    [backgroundView addGestureRecognizer:swipeGesture];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) swipedScreen:(UISwipeGestureRecognizer*)swipeGesture {
    NSLog(@"%i", 1);
    backgroundView.backgroundColor = [UIColor magentaColor];
    testLabel.text = @"screen swiped";
    
    //    [self switchViews];
}

@end
