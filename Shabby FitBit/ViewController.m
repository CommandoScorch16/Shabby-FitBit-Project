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
@synthesize webview;


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    //NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://"]];
    NSString* username = @"captainrex1@yahoo.com";
    NSString* password = @"waterfall";
    
    NSURL* url = [NSURL URLWithString:@"https://www.facebook.com/login.php"];
    
    NSString* body = [NSString stringWithFormat:@"appName=facebook&email=%@&password=%@", username, password];
    NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30];
    
    request.HTTPMethod = @"POST";
    request.HTTPBody = [body dataUsingEncoding:NSStringEncodingConversionAllowLossy];
    
    NSURL* dogg = [NSURL URLWithString:@"https://www.facebook.com/samuel.horton.37"];
    
    NSMutableURLRequest* request1 = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30];
    
    [webview loadRequest:request1];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)userNameReturnKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}
- (IBAction)logInWithCredentials:(UIButton *)sender {
    NSString *content = @"username=blabla&password=123456";
    NSData *data=[content dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postlenght=[NSString stringWithFormat:@"%d",[data length]];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.shabbyfit.comli.com/main_login.php?mode=login"]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postlenght forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:data];
    NSError *error=nil;
    NSURLResponse *response=nil;
    NSData *result=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    [webview loadRequest:request];
}

@end
