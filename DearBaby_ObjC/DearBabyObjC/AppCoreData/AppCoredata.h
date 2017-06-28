//
//  AppCoredata.h
//  DearBabyObjC
//
//  Created by Liu Rui on 2017/6/20.
//  Copyright © 2017年 James. All rights reserved.
//

#import "JZMultiDelegateObject.h"
#import "AppGlobal.h"
#import "DearBaby.h"


@interface AppCoredata : JZMultiDelegateObject
SYNTHESIZE_SINGLETON_FOR_HEADER(AppCoredata)

@property (nonatomic, readonly) DearBaby* theLittleBaby;

@end


