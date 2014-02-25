//
//  ViewController.m
//  Аристократы
//
//  Created by Oleg Boiko on 2/25/14.
//  Copyright (c) 2014 Overspecial. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSString *stream = @"http://www.fockingawesome.com/radio/index.htm";
    NSURL *url = [NSURL URLWithString:stream];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [WebView loadRequest:request];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
