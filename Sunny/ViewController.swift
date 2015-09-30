//
//  ViewController.swift
//  Sunny
//
//  Created by Jaken Herman on 9/30/15.
//  Copyright (c) 2015 Jaken Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"),
           let WeatherDictionary = NSDictionary(contentsOfFile: plistPath),
           let currentWeatherDictionary = weatherDictionary["currently"] as? [String: AnyObject]{
            
            let currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
            
                   }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




