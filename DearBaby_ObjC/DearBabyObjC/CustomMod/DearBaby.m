//
//  DearBaby.m
//  DearBabyObjC
//
//  Created by Liu Rui on 2017/6/27.
//  Copyright © 2017年 James. All rights reserved.
//

#import "DearBaby.h"
#import "AppGlobal.h"


@interface DearBaby()
{
    NSString* mBabyName;
    NSDate* mBabayBirthday;
}

@end




@implementation DearBaby

-(instancetype)init
{
    self = [super init];
    if (nil != self) {
        mBabyName = nil;
        mBabayBirthday = nil;
    }
    return self;
}

-(instancetype)initBabyWithName:(NSString*)Name BirthdayStr: (NSString*)BirthdayStr BirthdayStrFormat: (NSString*)Dayformat
{
    self = [self init];
    
    if ((nil == Name)||(nil==BirthdayStr)||(nil == Dayformat)) {
        return self;
    }
    
    if (nil != self) {
        mBabyName = Name;
        mBabayBirthday = [JZDateHelper dateFromString: BirthdayStr withFormat: Dayformat];
    }
    return self;
}

-(instancetype)initBabyWithName:(NSString*)Name Birthday: (NSDate*)Birthday
{
    self = [self init];
    
    if ((nil == Name)||(nil==Birthday)) {
        return self;
    }
    
    if (nil != self) {
        mBabyName = Name;
        mBabayBirthday = Birthday;
    }
    return self;
}


-(NSString*)BabyName
{
    return mBabyName;
}

-(NSDate*)BabyBirthday
{
    return mBabayBirthday;
}



@end
