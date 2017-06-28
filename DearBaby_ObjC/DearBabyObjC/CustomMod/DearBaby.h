//
//  DearBaby.h
//  DearBabyObjC
//
//  Created by Liu Rui on 2017/6/27.
//  Copyright © 2017年 James. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DearBaby : NSObject

-(instancetype)initBabyWithName: (NSString*)Name
                    BirthdayStr: (NSString*)BirthdayStr
              BirthdayStrFormat: (NSString*)Dayformat;
-(instancetype)initBabyWithName: (NSString*)Name
                       Birthday: (NSDate*)Birthday;

@property (nonatomic, readonly) NSString* BabyName;
@property (nonatomic, readonly) NSDate* BabyBirthday;




@end
