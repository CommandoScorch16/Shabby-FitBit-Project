//
//  webViewController.h
//  Shabby FitBit
//
//  Created by Samuel Horton on 6/25/14.
//  Copyright (c) 2014 Samuel Horton. The MIT License (MIT)
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController


@property (nonatomic, retain) IBOutlet UIWebView* webView;
@property (nonatomic, retain) IBOutlet UITextView *tView;
@property NSString *testConnURL;

/** This is just a string that we can check to see if we succesfully connected or not */
@property NSString *connectionStatus;
@property int cFlag;


/**
 Get the connection and do something with the data
 
 @param connection The connection to the Shabby FitBit website
 @param data The datat that the Shabby FitBit website sent us
 @returns Nothing, we just use the data to make sure we connected to the right website!
 */
-(void) connection:(NSURLConnection *) connection
    didReceiveData:(NSData *) data;


/**
 Once the webViewController loads, we use the username and password that the user just entered,
 and we send an HTTP post request to the Shabby FitBit website with the username and password as paramaters
 */
- (void)viewDidLoad;
 
@end





