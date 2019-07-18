//
//  ViewController.swift
//  NotificationsApp
//
//  Created by Maze Geek on 7/17/19.
//  Copyright © 2019 Amit Biswas. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Hi there! "
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "TestIdentifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }


}

