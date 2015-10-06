//
//  ForgotPasswordViewController.h
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ForgotPasswordViewController : UIViewController
- (IBAction)forgotPasswordTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailIdField;
- (IBAction)closeButtonTapped:(id)sender;

@end
