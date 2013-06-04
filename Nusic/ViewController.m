//
//  ViewController.m
//  Nusic
//
//  Created by Jake Lechnir on 6/1/13.
//  Copyright (c) 2013 Jake Lechnir. All rights reserved.
//

#import "ViewController.h"

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

@end
