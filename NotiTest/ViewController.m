//
//  ViewController.m
//  NotiTest
//
//  Created by SDT-1 on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController
- (IBAction)notiNow:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.alertBody = @"Noti Test";
    noti.alertAction = @"Confirm";
    
    [[UIApplication sharedApplication] presentLocalNotificationNow:noti];
}
- (IBAction)fireNotiIn7:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = [NSDate dateWithTimeIntervalSinceNow:7];
    noti.alertBody = @"Noti Test - 7seconds";
    noti.alertAction = @"Confirm";
    noti.soundName= UILocalNotificationDefaultSoundName;
    
    noti.userInfo = nil;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:noti];
}
- (IBAction)fireNoti:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = self.datePicker.date;
    noti.alertBody = @"Noti Test - customize";
    noti.alertAction = @"Confirm";
    
    noti.soundName= @"noti.wav";
    noti.alertLaunchImage = @"image.png";
    
    noti.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"object",@"key", nil];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:noti];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
