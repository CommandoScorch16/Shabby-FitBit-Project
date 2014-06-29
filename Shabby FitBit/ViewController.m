//
//  ViewController.m
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/17/14.
//  Copyright (c) 2014 CSCI 3308. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webview, tView;


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData*)data
{
    
    
}


- (IBAction)userNameReturnKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}


- (IBAction)logInWithCredentials:(UIButton *)sender {
    
}

@end
