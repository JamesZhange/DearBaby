//
//  AppViewsColorDefine.m
//  AirDefenderNewUI
//
//  Created by Liu Rui on 16/2/26.
//  Copyright © 2016年 Liu Rui. All rights reserved.
//

#import "AppViewsCustomStyleDefine.h"
#import "AppGlobal.h"
#import "AppModule.h"



@implementation AppViewsCustomStyleDefine



+(void)drawHeaderCycleforImageView: (UIImageView*)imageview
                       borderWidth: (CGFloat)linewidth
                       borderColor: (UIColor*)bordercolor
                   backgroundColor: (UIColor*)backcolor
{
    CALayer* drawlayer = imageview.layer;
    drawlayer.borderWidth = linewidth;
    drawlayer.cornerRadius = imageview.bounds.size.width / 2;
    drawlayer.borderColor = bordercolor.CGColor;
    drawlayer.backgroundColor = backcolor.CGColor;
    drawlayer.masksToBounds = YES;
}




@end




