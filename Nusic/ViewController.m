//
//  ViewController.m
//  Nusic
//
//  Created by Jake Lechnir on 6/1/13.
//  Copyright (c) 2013 Jake Lechnir. All rights reserved.
//

#import "ViewController.h"
#import "ProfileViewController.h"

@interface ViewController ()



@end

@implementation ViewController

@synthesize loginButton;
@synthesize usernameText;


- (void)viewDidLoad
{
    [super viewDidLoad];
    [usernameText becomeFirstResponder]; //makes the app start with keyboard up
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
  [loginButton setImage:[UIImage imageNamed:@"button_connectfacebook.press.png"] forState:UIControlStateNormal];
  
}
- (IBAction)buttonUnpressed:(id)sender {
    [loginButton setImage:[UIImage imageNamed:@"button_connectfacebook.png"] forState:UIControlStateNormal];
}
- (IBAction)buttonClicked:(id)sender {
  [self performSegueWithIdentifier:@"loginToProfile" sender:self];
  [loginButton setImage:[UIImage imageNamed:@"button_connectfacebook.png"] forState:UIControlStateNormal];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  NSLog(@"testtestest");
  if ([segue.identifier isEqualToString:@"loginToProfile"]) {
    ProfileViewController *destViewController = segue.destinationViewController;
    destViewController.username = usernameText.text;
  }
}

@end
