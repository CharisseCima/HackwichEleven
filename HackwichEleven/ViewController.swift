//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Christian Cimafranca on 11/17/22.
//  Copyright © 2022 Charisse Cimafranca. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let intialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: intialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080998))
        
        let restaurantTwo = Restaurant(title: "Pho One", type: "Vietnamese", coordinate: CLLocationCoordinate2D(latitude: 21.332583, longitude: -158.082951))
        
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
        
    }

    
    func centerMapOnLocation(location:CLLocation){
        
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
        
    }
    

}

