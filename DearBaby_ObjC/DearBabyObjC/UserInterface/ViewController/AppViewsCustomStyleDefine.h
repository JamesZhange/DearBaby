//
//  AppViewsColorDefine.h
//  AirDefenderNewUI
//
//  Created by Liu Rui on 16/2/26.
//  Copyright © 2016年 Liu Rui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**********************/
/**       Color      **/
/**********************/

#define MainTabbarSelectedColor         @"0x058ff9ff"
#define MainTabbarBadgeColor            @"0xe62c01ff"





// AQI 颜色
#define AQIColor_FairairGood            @"0x058ff9ff"
#define AQIColor_VeryGood               @"0x53d76aff"
#define AQIColor_Good                   @"0xc6dd00ff"
#define AQIColor_LightPolluted          @"0xddca00ff"
#define AQIColor_ModeratePolluted       @"0xcb6d01ff"
#define AQIColor_HeavyPolluted          @"0x83062fff"
#define AQIColor_SeriousPolluted        @"0x553023ff"
#define AQIColor_Invalid                @"0xc6cdd5ff"


// button 阴影
#define DefaultButtonBackGroundWhenHightlight   @"0xf3f3f3aa"
#define TableCellSelectedColor                  @"0xf9f9f9ff"

// 设备上电状态
#define CleanerWiFiStateColor_PowerOn       @"0x5ade71"
#define CleanerWiFiStateColor_PowerOff      @"0x175cc4"
#define CleanerWiFiStateColor_OffLine       @"0x9f9f9f"




/**********************/
/**       Font      **/
/**********************/

#define GlobalViewNavbarTitleFontName       @"FZLanTingKanHei-R-GBK"
#define GlobalViewNavbarTitleFontSize       18

#define MainTabbarItemFontName              @"FZLanTingHei-M-GBK"
#define MainTabbarItemFontSize              11





/********************************/
/**             Size           **/
/********************************/

#define UserHeadImageWidth      800
#define UserHeadImageHeight     800



/****************************************************/
/**       @interface AppViewsCustomStyleDefine     **/
/****************************************************/

#define UseImageBackground          true


@interface AppViewsCustomStyleDefine : NSObject

+(void)drawHeaderCycleforImageView: (UIImageView*)imageview
                       borderWidth: (CGFloat)linewidth
                       borderColor: (UIColor*)bordercolor
                   backgroundColor: (UIColor*)backcolor;
@end











