//
//  ProfileViewController.h
//  Nusic
//
//  Created by Mayank Jain on 6/2/13.
//  Copyright (c) 2013 Jake Lechnir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *backgroundView;
@property (strong, nonatomic) IBOutlet UILabel *testSwipe;
@property (strong, nonatomic) IBOutlet UIImageView *profilePic;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) IBOutlet UILabel *name;

@end
