//
//  ViewController.swift
//  School Zone Safety
//
//  Created by Aaroh Sharma on 3/13/17.
//  Copyright © 2017 Aaroh Sharma. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{
    @IBOutlet var speedLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    var locationManager: CLLocationManager?
    var location:String?
    var spd:String?
    var latitude: CLLocationDegrees?
    var longitude: CLLocationDegrees?
    var speed: CLLocationSpeed?
    var currLocation: CLLocation?
    var zones = SchoolZones()
    var zoneLats: [String] = [String]()
    var zoneLongs: [String] = [String]()
    var dists: [Double] = []
    
//    private func locationManager(manager: CLLocationManager,didUpdateLocations locations: [CLLocation]){
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//        currLocation = CLLocation(latitude: locValue.latitude, longitude: locValue.longitude)
//        speed = (manager.location?.speed)! * 2.23693629
//        latitude = locValue.latitude
//        longitude = locValue.longitude
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var zones = SchoolZones()
//        var zoneLocation: [CLLocation] = zones.schoollocs
//
//        self.locationManager = CLLocationManager()
//        self.locationManager?.delegate = self
//        self.locationManager?.desiredAccuracy = kCLLocationAccuracyKilometer
//        self.locationManager?.requestWhenInUseAuthorization()
//        self.locationManager?.startUpdatingLocation()
//        
//        var coordinate: String = String(describing: longitude) + ", " + String(describing: latitude)
//        self.locationLabel.text = coordinate
//        var velocity: String = String(describing: speed)
//        self.speedLabel.text = velocity
//        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        determineMyCurrentLocation()
    }
    
    func determineMyCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager?.startUpdatingLocation()
            //locationManager.startUpdatingHeading()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0] as CLLocation
        
        locationLabel.text = String(userLocation.coordinate.latitude) + ", " + String(userLocation.coordinate.longitude)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
    


}

