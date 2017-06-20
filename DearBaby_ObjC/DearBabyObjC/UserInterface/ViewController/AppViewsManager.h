//
//  AppViewsManager.h
//  AirDefenderNewUI
//
//  Created by Liu Rui on 15/2/11.
//  Copyright (c) 2015年 Liu Rui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppGlobal.h"
#import "AppViewsCustomStyleDefine.h"



@protocol AppViewsManagerNotification <NSObject>

-(void)AppDidEnterBackground;
-(void)AppWillEnterForeground;

@end






@interface AppViewsManager : JZMultiDelegateObject
SYNTHESIZE_SINGLETON_FOR_HEADER(AppViewsManager)


-(void)OnAppDidEnterBackground;
-(void)OnAppWillEnterForeground;


@end
