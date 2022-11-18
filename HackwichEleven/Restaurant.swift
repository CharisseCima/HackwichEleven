//
//  Restaurant.swift
//  HackwichEleven
//
//  Created by Christian Cimafranca on 11/17/22.
//  Copyright © 2022 Charisse Cimafranca. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {

    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title:String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String? {
        return restaurantTitle
    }
    
}
