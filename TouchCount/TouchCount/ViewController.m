//
//  ViewController.m
//  TouchCount
//
//  Created by MacBook Air on 12年7月30日.
//  Copyright (c) 2012年 MacBook Air. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize toPressCount;
@synthesize result;

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    int sum =0;
    int sumPress=0;
    
    result.text = [NSString stringWithFormat:@"%d",sum];
    toPressCount.text = [NSString stringWithFormat:@"%d",sumPress];
 
    return NO;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"button9" ofType:@"wav"];
    button9= [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setResult:nil];
    [self setToPressCount:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)toadd:(id)sender {
    
    int interval;
    int sum;
    int sumPress;
    
    [button9 play];
    
    interval = [_textField.text intValue];
    
    sum = [result.text intValue]+interval;
    sumPress = [toPressCount.text intValue]+1;
    
    NSLog(@"sum = %d",sum);
    NSLog(@"sumPress = %d",sumPress);
    
    result.text = [NSString stringWithFormat:@"%d",sum];
    toPressCount.text = [NSString stringWithFormat:@"%d",sumPress];
    
 
}

- (IBAction)toReset:(id)sender {
    int sum =0;
    int sumPress=0;
    
    result.text = [NSString stringWithFormat:@"%d",sum];
    toPressCount.text = [NSString stringWithFormat:@"%d",sumPress];
    _textField.text = @"1";
}

//- (IBAction)textField:(id)sender {}
@end
