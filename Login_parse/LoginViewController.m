//
//  LoginViewController.m
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import "LoginViewController.h"
#import "ForgotPasswordViewController.h"
#import "SignUpViewController.h"
#import "UserRootViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController () <UITextFieldDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // self.emailIdField.delegate=self;
    //self.passwordField.delegate=self;
    self.passwordField.secureTextEntry=YES;
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
  
    //self.view.backgroundColor=[UIColor colorWithRed:1 green:0.498 blue:0.415 alpha:1];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginButtonTapped:(id)sender {
    
    [PFUser logInWithUsernameInBackground:self.emailIdField.text password:self.passwordField.text block:^(PFUser * _Nullable user, NSError * _Nullable error) {
        if(user){
            UserRootViewController *userRootVC =[[UserRootViewController alloc]initWithNibName:@"UserRootViewController" bundle:nil];
            [self presentViewController:userRootVC animated:YES completion:nil];
        }
    }];
}

- (IBAction)forgotPasswordTapped:(id)sender {
    ForgotPasswordViewController *forgotPasswordVC =[[ForgotPasswordViewController alloc]initWithNibName:@"ForgotPasswordViewController" bundle:nil];
    [self presentViewController:forgotPasswordVC animated:YES completion:nil];
}

- (IBAction)signUpButtonTapped:(id)sender {
    SignUpViewController *signupViewController =[[SignUpViewController alloc]initWithNibName:@"SignUpViewController" bundle:nil];
    [self presentViewController:signupViewController animated:YES completion:nil];
    
}
-(void)dismissKeyboard{
    [self.emailIdField resignFirstResponder];
    [self.passwordField resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
  //  [self.emailIdField resignFirstResponder];
    [self.passwordField resignFirstResponder];
    return YES;
}
@end
