//
//  ViewController.swift
//  testLocation
//
//  Created by Dhanshri Pawar on 10/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
     
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationService()

    }

    func checkLocationService() {
        if CLLocationManager.locationServicesEnabled() {
            setLocationManager()
            checkAuthorizationStatus()
        }else {
            
            print("Kindly Enable Location Service.")
        }
    }
    
    func setLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerUserLocation() {
        let location = CLLocation(latitude: 21.4765, longitude: -157.9647)
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
       
        mapView.setRegion(region, animated: true)
    }
    
    func checkAuthorizationStatus() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            centerUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .restricted:
            break
        case .denied:
            break
        case .authorizedAlways:
            break
        @unknown default:
            print("error while fetching authorization status")
        }
    }

}

extension ViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 10000, longitudinalMeters: 10000)
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkAuthorizationStatus()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Not able to retrieve location.")
    }

    
}

