//
//  ViewController.h
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/17/14.
//  Copyright (c) 2014 CSCI 3308. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UIWebView *webview;
@property IBOutlet UITextView *tView;

@property IBOutlet UITextField *userNameField;
@property IBOutlet UITextField *passwordField;

@end


NSString *userName;
NSString *password;