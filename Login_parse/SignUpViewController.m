//
//  SignUpViewController.m
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import "SignUpViewController.h"
#import "UserRootViewController.h"
#import <Parse/Parse.h>

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
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

- (IBAction)signUpButtonTapped:(id)sender {
    PFUser *user =[PFUser user];
    user.email=self.emailIdField.text;
    user.username=self.userNameField.text;
    user.password=self.passwordField.text;
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if(!error){
            UserRootViewController *userRootViewController =[[UserRootViewController alloc]initWithNibName:@"UserRootViewController" bundle:nil];
            [self presentViewController:userRootViewController animated:YES completion:nil];
            NSLog(@"Sign Up sucessfull");
            
        }
        else{
            NSLog(@"Error Occured while logging in");
            
        }
    }];
    
    
}
-(void)dismissKeyboard{
    [self.emailIdField resignFirstResponder];
    [self.userNameField resignFirstResponder];
    [self.passwordField resignFirstResponder];
    
}
- (IBAction)closeButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
