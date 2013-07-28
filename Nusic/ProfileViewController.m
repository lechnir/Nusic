//
//  ProfileViewController.m
//  Nusic
//
//  Created by Mayank Jain on 6/2/13.
//  Copyright (c) 2013 Jake Lechnir. All rights reserved.
//

#import "ProfileViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize backgroundView;
@synthesize testSwipe;
@synthesize profilePic;
@synthesize username;
@synthesize name;

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
    swipeGesture.direction = (UISwipeGestureRecognizerDirectionRight); //swipe direction
    
    [backgroundView addGestureRecognizer:swipeGesture]; //attaches swipe to view

  // Get the Layer of any view
  CALayer * l = [profilePic layer];
  [l setMasksToBounds:YES];
  [l setCornerRadius:75.0];
  
    
    
    UITapGestureRecognizer *tapRecognizer; //tap recognizer on profile pic image
    tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(profileTouched:)];
    [profilePic addGestureRecognizer:tapRecognizer];
    
    profilePic.userInteractionEnabled = YES;
  
//    self.navigationItem.hidesBackButton = YES;
  if(![username isEqualToString:@""])
      name.text = username;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) swipedScreen:(UISwipeGestureRecognizer*)swipeGesture {
    NSLog(@"%i", 1);
    backgroundView.backgroundColor = [UIColor magentaColor]; //changes background color
    testSwipe.text = @"screen swiped"; //changes text
    
    //    [self switchViews];
}

- (void) profileTouched:(UITapGestureRecognizer*)tapRecognizer {
    NSLog(@"touched");
  CALayer * l = [profilePic layer];
  [l setMasksToBounds:YES];
    CGRect frame = [profilePic frame];
  frame.size.width = .9 * frame.size.width;
  frame.size.height = .9 * frame.size.height;
  
  [UIView animateWithDuration:1.0 animations:^{
    
      [profilePic setFrame:frame];
       [l setCornerRadius:l.cornerRadius * .9];
     }];
   //resizes profile pic if tapped
  
  
  
}


@end
