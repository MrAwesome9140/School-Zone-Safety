//
//  SchoolZones.swift
//  School Zone Safety
//
//  Created by Aaroh Sharma on 11/21/17.
//  Copyright © 2017 Aaroh Sharma. All rights reserved.
//

import Foundation
import CoreLocation


class SchoolZones: NSMutableArray{
    var schoolnames: [String] = []
    var schoollocs: [CLLocation] = []
    
    struct Zone {
        var schoolName: String
        var schoolType: String
        var schoolRadius: Double
        var schoolLoc: CLLocation
    }
    
    func getZonesList() -> [Zone] {
        
        
        var schoolzones = [Zone]()
        
            
        schoolzones.append(Zone(schoolName: "Brazos Bend Elementary", schoolType: "Elementary", schoolRadius: 0.15, schoolLoc: CLLocation(latitude: 29.592601, longitude: -95.692719)))
        schoolzones.append(Zone(schoolName: "Walker Station Elementary", schoolType: "Elementary", schoolRadius: 0.15, schoolLoc: CLLocation(latitude: 29.600275, longitude: -95.667022)))
        schoolzones.append(Zone(schoolName: "Sartaria Middle School", schoolType: "Middle", schoolRadius: 0.15, schoolLoc: CLLocation(latitude: 29.586363, longitude: -95.667022)))
        schoolzones.append(Zone(schoolName: "Quail Valley Middle School", schoolType: "Middle", schoolRadius: 0.15, schoolLoc: CLLocation(latitude: 29.574210, longitude: -95.561252)))
        schoolzones.append(Zone(schoolName: "Fort Settlment Middle School", schoolType: "Middle", schoolRadius: 0.15, schoolLoc: CLLocation(latitude: 29.556304, longitude: -95.630531)))
        schoolzones.append(Zone(schoolName: "Travis High School", schoolType: "High", schoolRadius: 0.25, schoolLoc: CLLocation(latitude: 29.653471, longitude: -95.716663)))
        schoolzones.append(Zone(schoolName: "Dulles High School", schoolType: "High", schoolRadius: 0.25, schoolLoc: CLLocation(latitude: 29.620354, longitude: -95.584327)))
        schoolzones.append(Zone(schoolName: "Austin High School", schoolType: "High", schoolRadius: 0.25, schoolLoc: CLLocation(latitude: 29.731890, longitude: -95.331212)))

        schoolnames = schoolzones.map({$0.schoolName})
        schoollocs = schoolzones.map({$0.schoolLoc})
        
        return schoolzones
    }
    


}
