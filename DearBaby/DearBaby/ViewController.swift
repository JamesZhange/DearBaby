//
//  ViewController.swift
//  DearBaby
//
//  Created by Liu Rui on 16/9/21.
//  Copyright © 2016年 James. All rights reserved.
//

import UIKit


var babyBronTime: String = "2016年05月27日 23点34分";




class ViewController: UIViewController {
    
    // var TitleLabel: UILabel
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BronTime: UILabel!
    
    @IBOutlet weak var GrowupDay: UILabel!
    @IBOutlet weak var GrowupMounh: UILabel!
    @IBOutlet weak var GrowupMinute: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        let testf:Float = 9.5
//        let chushu:Float = 3.2
//        
//        let result余数 = testf.truncatingRemainder(dividingBy: chushu)
//        let result除数 = testf / chushu
//        
//        print(result余数);
//        print(result除数);
//        
//        var student: Dictionary<Int, String> = [001: "张三", 002: "李四"];
//        
        
        //
        let dateformatter = DateFormatter();
        dateformatter.dateFormat = "yyyy年MM月dd日 HH点mm分";
        var bornTime = dateformatter.date(from:babyBronTime);
        
        TitleLabel.text = "亲爱的知之";
        BronTime.text = "你于\(babyBronTime)诞生";
        
        // var nowTime: NSDate = NSDate();
        var gregorian = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        var result:DateComponents = gregorian!.components(NSCalendar.Unit.day,
                                           from: bornTime!,
                                           to: NSDate() as Date,
                                           options: NSCalendar.Options(rawValue: 0));
        GrowupDay.text = "至今成长了\(String(format:"%d",result.day!))天";
        
        result = gregorian!.components(NSCalendar.Unit.month,
                                       from: bornTime!,
                                       to: NSDate() as Date,
                                       options: NSCalendar.Options(rawValue: 0));
        GrowupMounh.text = "合计\(String(format:"%d",result.month!))个月"
        
        result = gregorian!.components(NSCalendar.Unit.minute,
                                       from: bornTime!,
                                       to: NSDate() as Date,
                                       options: NSCalendar.Options(rawValue: 0));
        
        GrowupMinute.text = "愿你成长的\(String(format:"%d",result.minute!))分钟都时刻幸福"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

