//
//  JZTimer.swift
//  DearBaby
//
//  Created by Liu Rui on 2017/1/14.
//  Copyright © 2017年 James. All rights reserved.
//

import Foundation

typealias ontimeRunBlock = ()->();
//
//class JZTimer: NSObject
//{
//    var mRepeat: Bool;
//    var mSecond: TimeInterval;
//    var timer: Timer;
//    var mCompletion: ontimeRunBlock;
//    
//    override init()
//    {
//        super.init();
//        
////        timer = nil;
////        mCompletion = nil;
//    }
//    
//    deinit {
//        [self stopTimer];
//    }
//    
//    func newTimer() -> JZTimer {
//        return JZTimer();
//    }
//    
//    func startTimer(TimingSecond: TimeInterval,
//                    timerBlock: ontimeRunBlock,
//                    ifrepeat: Bool) -> ()
//    {
//        <#function body#>
//    }
//    
//    
//    -(void)startTimerTimingSecond: (NSTimeInterval)second
//    block: (void (^)())timerBlock
//    repeat: (BOOL)yesOrNo
//    {
//    if (timer) {
//    [timer invalidate];
//    timer = nil;
//    }
//    mCompletion = timerBlock;
//    mSecond = second;
//    mRepeat = yesOrNo;
//    
//    timer = [NSTimer scheduledTimerWithTimeInterval: second
//    target: self
//    selector: @selector(onTheTime)
//    userInfo: nil repeats:yesOrNo];
//    }
//    
//    
//    -(void)onTheTime
//    {
//    if (nil != mCompletion) {
//    mCompletion();
//    }
//    }
//    
//    -(void)fire
//    {
//    if (timer) {
//    [timer fire];
//    }
//    }
//    
//    -(void)pauseTimer
//    {
//    if (timer) {
//    [timer invalidate];
//    timer = nil;
//    }
//    }
//    
//    -(void)resumeTimer
//    {
//    if (timer) {
//    [timer invalidate];
//    timer = nil;
//    }
//    
//    timer = [NSTimer scheduledTimerWithTimeInterval: mSecond
//    target: self
//    selector: @selector(onTheTime)
//    userInfo: nil repeats:mRepeat];
//    }
//    
//    
//    
//    func stopTimer() -> void
//    {
//        if (timer) {
//            [timer invalidate];
//            timer = nil;
//        }
//    }
//
//}
