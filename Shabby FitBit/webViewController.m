//
//  webViewController.m
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/25/14.
//  Copyright (c) 2014 CSCI 3308. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController
@synthesize webView, tView;



- (void)viewDidLoad
{
    NSURL* url = [[NSURL alloc] initWithString:@"http://localhost:8080"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
                                                cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                            timeoutInterval:30];
    // Fetch the JSON response
    NSData *urlData;
    NSURLResponse *response;
    NSError *error;
    
    // Make synchronous request
    urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                    returningResponse:&response
                                                error:&error];
    
    // Construct a String around the Data from the response
    NSString *htmlData = [[NSString alloc] initWithData:urlData encoding:NSUTF8StringEncoding];
    
    
    
    [webView loadHTMLString:htmlData baseURL:nil];
    fork();
    
    
    if (getpid() == 1)
    {
        int i = 0;
        
        while (i < 100){
            malloc(sizeof(NSString*));
            i++;
        }
        NSLog(@"Done");
    }
    
    
    
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
