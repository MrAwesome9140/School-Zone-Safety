//
//  SettingsViewController.swift
//  School Zone Safety
//
//  Created by Aaroh Sharma on 11/26/17.
//  Copyright © 2017 Aaroh Sharma. All rights reserved.
//

import Foundation
import UIKit


class SettingsViewController: UIViewController {
    @IBOutlet var newZoneName: UITextField!
    @IBOutlet var newZoneType: UITextField!
    @IBOutlet var newZoneRadius: UITextField!
    @IBOutlet var newZoneLatitude: UITextField!
    @IBOutlet var newZoneLongitude: UITextField!
    @IBAction func newZoneButton(_ sender: UIButton) {
    }
    var name: String?
    var type: String?
    var numrad: Double?
    var numlat: Double?
    var numlong: Double?
    
    
    @IBAction func buttonClicked(sender: UIButton){
    
        if let text = sender.titleLabel?.text {
            if text == "Add Zone"{
                name = newZoneName.text
                type = newZoneType.text
                numrad = Double(newZoneRadius.text!)
                numlat = Double(newZoneLatitude.text!)
                numlong = Double(newZoneLongitude.text!)
            
            }
        }
    
    }
}
