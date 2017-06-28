//
//  ViewController.m
//  DearBabyObjC
//
//  Created by Liu Rui on 2017/6/19.
//  Copyright © 2017年 James. All rights reserved.
//

#import "BabyInfoViewController.h"
#import "AppGlobal.h"
#import "AppModule.h"


@interface BabyInfoViewController ()
{
    JZTimer* cycleCalculTimer;
}

@property (weak, nonatomic) IBOutlet UIView *BGView;
@property (weak, nonatomic) IBOutlet UIImageView *BGImage;

@property (weak, nonatomic) IBOutlet UIImageView *SunImage;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *SunImageHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *SumImageTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *SumImageTrailingConstraint;


@property (weak, nonatomic) IBOutlet UIImageView *FlowerImage;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *FlowerImageHeightConstraint;


@property (weak, nonatomic) IBOutlet UILabel *AppNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *byforLabel;

@property (weak, nonatomic) IBOutlet UIView *InformationTextView;
@property (weak, nonatomic) IBOutlet UILabel *BabyNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *BirthdayStringLabel;
@property (weak, nonatomic) IBOutlet UILabel *IntervalTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *IntervalYear;
@property (weak, nonatomic) IBOutlet UILabel *IntervalMonth;
@property (weak, nonatomic) IBOutlet UILabel *IntervalDay;
@property (weak, nonatomic) IBOutlet UILabel *IntervalHour;
@property (weak, nonatomic) IBOutlet UILabel *IntervalMinute;

@end





@implementation BabyInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.InformationTextView.alpha = 0;
    
    //bg view
    // self.BGImage.alpha = 0.0;
    self.AppNameLabel.alpha = 1;
    self.byforLabel.alpha = 1;
    
    self.FlowerImage.alpha = 0.8;
    self.FlowerImageHeightConstraint.constant = 0;
    
    self.SunImage.alpha = 0.8;
    self.SumImageTopConstraint.constant = -(self.SunImageHeightConstraint.constant+20);
    self.SumImageTrailingConstraint.constant = -(self.SunImageHeightConstraint.constant+20);
    [self.view layoutIfNeeded];
    
    // 文字
    [self initBirthdayString];
    cycleCalculTimer = [JZTimer newTimer];
    [cycleCalculTimer startTimerTimingSecond: 1 block: ^{
        [self calculIntervalTimerAndShow];
    } repeat:YES];
    [cycleCalculTimer fire];
    
    [JZTimer delayTimingSecond: 1 RunBlock:^{
        [self showViewLoadAnimation];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)showViewLoadAnimation
{
    [UIView animateWithDuration: 1
                     animations: ^{
                         self.byforLabel.alpha = 0.0;
                         self.AppNameLabel.alpha = 0.0;
                         // self.BGImage.alpha = 1;
                     } completion: ^(BOOL finished){
                         
                         [UIView animateWithDuration: 0.5
                                               delay: 0
                              usingSpringWithDamping: 0.2
                               initialSpringVelocity: 0
                                             options: UIViewAnimationOptionCurveEaseOut
                                          animations: ^{
                                              
                                              self.FlowerImageHeightConstraint.constant = 220;
                                              [self.view layoutIfNeeded];
                                              
                                          } completion: ^(BOOL finished) {
                                              
                                              [UIView animateWithDuration: 0.7
                                                                    delay: 0
                                                   usingSpringWithDamping: 0.2
                                                    initialSpringVelocity: 0
                                                                  options: UIViewAnimationOptionCurveEaseIn
                                                               animations: ^{
                                                                   
                                                                   self.SumImageTopConstraint.constant = 20;
                                                                   self.SumImageTrailingConstraint.constant = 0;
                                                                   [self.view layoutIfNeeded];
                                                                   
                                                               } completion: ^(BOOL finished) {
                                                                   [UIView animateWithDuration: 0.5
                                                                                    animations: ^{
                                                                                        self.InformationTextView.alpha = 1;
                                                                                    } completion: ^(BOOL finished){
                                                                                    }];
                                                               }];
                                              
                                          }];
                         
                     }];
}




-(void)initBirthdayString
{
    self.BabyNameLabel.text = [NSString stringWithFormat: @"%@", APPInstance(AppCoredata).theLittleBaby.BabyName];
    NSString* birthdaystr = [JZDateHelper stringFromDate:APPInstance(AppCoredata).theLittleBaby.BabyBirthday withFormat:@"yyyy年MM月dd日 HH点mm分"];
    self.BirthdayStringLabel.text = [NSString stringWithFormat: @"你于 %@ 出生", birthdaystr];
}

-(void)calculIntervalTimerAndShow
{
    // NSDate* birthday = [JZDateHelper dateFromString:@"2016年5月27日 23点34分" withFormat:@"yyyy年MM月dd日 HH点mm分"];
    // NSDate* nowTime = [JZDateHelper dateFromString:@"2016年6月27日 23点30分" withFormat:@"yyyy年MM月dd日 HH点mm分"];
    
    // JZIntervalDateComponents* intervalComp = [JZDateHelper IntervalHumanTimeSinceDate:birthday ToDate:nowTime];

    // NSLog(@"%ld年%ld月%ld日%ld小时%ld分%ld秒", intervalComp.year, intervalComp.month, intervalComp.day, intervalComp.hour, intervalComp.minute, intervalComp.second);
    
    MAIN((^{
        NSDate* birthday = APPInstance(AppCoredata).theLittleBaby.BabyBirthday;
        NSDate* nowTime = [NSDate date];
        JZIntervalDateComponents* intervalComp = [JZDateHelper IntervalHumanTimeSinceDate:birthday ToDate:nowTime];

        self.IntervalYear.text = [NSString stringWithFormat:@"%ld", (long)intervalComp.year];
        self.IntervalMonth.text = [NSString stringWithFormat:@"%ld", (long)intervalComp.month];
        self.IntervalDay.text = [NSString stringWithFormat:@"%ld", (long)intervalComp.day];
        self.IntervalHour.text = [NSString stringWithFormat:@"%ld", (long)intervalComp.hour];
        self.IntervalMinute.text = [NSString stringWithFormat:@"%ld", (long)intervalComp.minute];
    }));
}


@end
