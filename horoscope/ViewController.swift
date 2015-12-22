//
//  ViewController.swift
//  horoscope
//
//  Created by Ryan on 22/12/2015.
//  Copyright © 2015 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showHoroscope: UIButton!
    @IBOutlet weak var showMyHoroscope: UIButton!
    var arrayHoroscope = ["水瓶座", "雙魚座", "牡羊座", "金牛座", "雙子座", "巨蟹座", "獅子座", "處女座", "天秤座", "天蝎座", "射手座", "山羊座"]

    var arrayPosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showHoroscope.setTitle(arrayHoroscope[arrayPosition], forState: . Normal)
        showMyHoroscope.setTitle("跳回我的星座", forState: .Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showHoroscopePressed(sender: AnyObject) {
        if arrayPosition <= 10 {
            showHoroscope.setTitle(arrayHoroscope[arrayPosition + 1], forState: .Normal)
            arrayPosition += 1
        } else {
            arrayPosition = 0
            showHoroscope.setTitle(arrayHoroscope[arrayPosition], forState: .Normal)
            arrayPosition += 1
        }
    }
    @IBAction func showMyHoroscopePressed(sender: AnyObject) {
        arrayPosition = 7
        showHoroscope.setTitle(arrayHoroscope[arrayPosition], forState: .Normal)
    }
    


}

