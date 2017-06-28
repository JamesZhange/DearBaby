//
//  AppCoredata.m
//  DearBabyObjC
//
//  Created by Liu Rui on 2017/6/20.
//  Copyright © 2017年 James. All rights reserved.
//

#import "AppCoredata.h"
#import "AppCoredataCategoryHeader.h"


@implementation AppCoredata
SYNTHESIZE_SINGLETON_FOR_CLASS(AppCoredata)

-(instancetype)init
{
    self = [super init];
    if (nil != self) {
        myLittleGeorge = [[DearBaby alloc] initBabyWithName: @"知之" BirthdayStr:@"2016年5月27日 23点34分" BirthdayStrFormat:@"yyyy年MM月dd日 HH点mm分"];
    }
    return self;
}


-(DearBaby*)theLittleBaby
{
    return myLittleGeorge;
}

@end
