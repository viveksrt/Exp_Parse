//
//  ForgotPasswordViewController.m
//  Login_parse
//
//  Created by Vivek Reddy on 05/10/15.
//  Copyright © 2015 Vivek Reddy. All rights reserved.
//

#import "ForgotPasswordViewController.h"
#import <Parse/Parse.h>
#import <Parse/PFUser.h>

@interface ForgotPasswordViewController ()

@end

@implementation ForgotPasswordViewController

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

- (IBAction)forgotPasswordTapped:(id)sender {
    NSString *finalEmail =  [self.emailIdField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    [PFUser requestPasswordResetForEmailInBackground:finalEmail block:^(BOOL succeeded, NSError * _Nullable error) {
        if(!error){
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Done" message:@"Password reset details are sent to your registered email" preferredStyle:UIAlertControllerStyleAlert];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
    
}

-(void) dismissKeyboard{
    [self.emailIdField resignFirstResponder];
    
}
- (IBAction)closeButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
