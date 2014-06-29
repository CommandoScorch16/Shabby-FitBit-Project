//
//  webViewController.m
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/25/14.
//  Copyright (c) 2014 CSCI 3308. All rights reserved.
//

#import "webViewController.h"
#import "ViewController.h"

@interface webViewController ()

@end

@implementation webViewController
@synthesize webView, tView;



- (void)viewDidLoad
{
    [[[webView subviews] lastObject] setScrollEnabled:NO];
    /*
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://dashatarasova.com/shabbyweb"]]];*/
    
    
    
    
    NSString *post = [NSString stringWithFormat:@"&username=%@&password=%@&Submit=",@"test",@"test"];//&Submit=
    
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    
    
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
        
        [request setURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://www.dashatarasova.com/shabbyweb/check_login.php"]]];
    
    
    [request setHTTPMethod:@"POST"];
    
    
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    
        
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    
    [request setHTTPBody:postData];
    
    
    NSURLConnection *conn = [[NSURLConnection alloc]initWithRequest:request delegate:self];
    
        
        if(conn) {
            NSLog(@"Connection Successful");
        } else {
            NSLog(@"Connection could not be made");
        }
    
    
    
}


-(void) connection:(NSURLConnection *) connection
    didReceiveData:(NSData *) data {
    
    
    
    
    NSLog(@"Connection made");
    
    NSURL *url = [NSURL URLWithString:@"http://dashatarasova.com/shabbyweb/"];
    
    NSString *html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [webView loadHTMLString:html baseURL:url];
    
    NSString *myString = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
    
    NSLog(@"%@",myString);
    
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
