//
//  ViewController.m
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/17/14.
//  Copyright (c) 2014 CSCI 3308. All rights reserved.
//

#import "ViewController.h"
#import "webViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webview, tView, userNameField, passwordField;




- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
    //This turns the text in the password field into black dots
    passwordField.secureTextEntry = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)userNameReturnKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (IBAction)returnPasswordKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (IBAction)logInWithCredentials:(UIButton *)sender {
    
    if ([userNameField.text isEqualToString:@""] || [passwordField.text isEqualToString:@""])
    {
        UIAlertView *alertView =[[ UIAlertView alloc]initWithTitle:@"Oops!" message:@"You left something blank! Please enter something and try again!" delegate:self cancelButtonTitle:@"Try Again" otherButtonTitles:nil, nil];
        
        [alertView show];
        return;
    }
    userName = userNameField.text;
    password = passwordField.text;
    
    
    
    
}






@end
