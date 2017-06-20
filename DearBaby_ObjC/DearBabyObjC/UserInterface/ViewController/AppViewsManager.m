//
//  AppViewsManager.m
//  AirDefenderNewUI
//
//  Created by Liu Rui on 15/2/11.
//  Copyright (c) 2015年 Liu Rui. All rights reserved.
//

#import "AppViewsManager.h"



#define MaxLeftDrawerWidthScale  (0.85)


#define StoryboardID_MainStoryboard                     @"Main"


//------------------- debug -------------------------------

//-------------------------------------------------------



@interface AppViewsManager ()
{

}

@end





@implementation AppViewsManager
SYNTHESIZE_SINGLETON_FOR_CLASS(AppViewsManager)

#pragma mark - 初始化

-(id)init
{
    self = [super init];
    if (nil != self) {

    }
    return self;
}



#pragma mark - 侧边栏 delegate



#pragma mark - 页面通知广播
-(void)OnAppDidEnterBackground
{
    [multiDelegate AppDidEnterBackground];
}

-(void)OnAppWillEnterForeground
{
    [multiDelegate AppWillEnterForeground];
}


#pragma mark - 获得App主页面（tabbar页面）

#pragma mark - 城市详情page controller view
//+(CityDetailViewPageController*)cityPageControllerView
//{
//    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:StoryboardID_CityWeatherStoryboard bundle: nil];
//    
//    CityDetailViewPageController* pagecontrollerview = [mainStoryboard instantiateViewControllerWithIdentifier: StoryboardID_CityPageControllerView];
//    
//    return pagecontrollerview;
//}

@end




