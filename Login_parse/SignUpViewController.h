//
//  SignUpViewController.h
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController
- (IBAction)signUpButtonTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailIdField;
@property (weak, nonatomic) IBOutlet UITextField *userNameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
- (IBAction)closeButtonTapped:(id)sender;

@end
