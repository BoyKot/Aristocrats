//
//  ViewController.m
//  Аристократы
//
//  Created by Oleg Boiko on 2/25/14.
//  Copyright (c) 2014 Overspecial. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    BOOL ok;
    NSError *setCategoryError = nil;
    ok = [audioSession setCategory:AVAudioSessionCategoryPlayback
                             error:&setCategoryError];
    if (!ok) {
        NSLog(@"%s setCategoryError=%@", __PRETTY_FUNCTION__, setCategoryError);
    }
    
    NSString *stream = @"http://www.overspecial.com/advanced/applications/radio/index.htm";
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
