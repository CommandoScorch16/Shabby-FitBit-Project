//
//  webViewController.m
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/25/14.
//  Copyright (c) 2014 Samuel Horton. The MIT License (MIT)
//

#import "webViewController.h"
#import "ViewController.h"


@interface webViewController ()

@end

@implementation webViewController
@synthesize webView, tView, testConnURL, connectionStatus, cFlag;



- (void)viewDidLoad
{
    
    
    NSString *post = [NSString stringWithFormat:@"&email=%@&pass=%@",userName,password];//&Submit=
    //login_form
    //pass
    //password
    //inputpassword
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    
    
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
        
    [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://www.facebook.com/login.php"]]];
    
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    
        
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    
    [request setHTTPBody:postData];
    
    
    NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
        
        if(conn) {
            NSLog(@"Connection Successful");
            connectionStatus = @"Connection Successful";
            
        } else {
            NSLog(@"Connection could not be made");
            connectionStatus = @"Connection could not be made";
        }
    
    
    
    testConnURL = conn.currentRequest.URL.absoluteString;
    [super didReceiveMemoryWarning];
    
}



-(void) connection:(NSURLConnection *) connection
    didReceiveData:(NSData *) data {
    
    
    
    cFlag = 99;
    
    
    NSLog(@"Connection made");
    
    //NSURL *url = [NSURL URLWithString:@"http://www.facebook.com"];
    NSURL *url = [[NSURL alloc]initWithString:@"http://www.facebook.com"];
    
    //NSString *html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    //[webView loadHTMLString:html baseURL:url];
    //[webView loadData:data MIMEType:@"application/rtf" textEncoding:NSUTF8StringEncoding baseURL:url];
    NSURLRequest* fbRequest = [[NSURLRequest alloc]initWithURL:url];
    [webView loadRequest:fbRequest];
    
    [super didReceiveMemoryWarning];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
