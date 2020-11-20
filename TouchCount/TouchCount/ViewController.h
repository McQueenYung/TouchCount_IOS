//
//  ViewController.h
//  TouchCount
//
//  Created by MacBook Air on 12年7月30日.
//  Copyright (c) 2012年 MacBook Air. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
//#import <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController

{AVAudioPlayer *button9;}

@property (strong, nonatomic) IBOutlet UILabel *result;
@property (strong, nonatomic) IBOutlet UILabel *toPressCount;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)toadd:(id)sender;
- (IBAction)toReset:(id)sender;

@end
