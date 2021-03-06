//
//  LocationManager.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import CoreLocation

class LocationManager: NSObject {

    // MARK: Class Constants

    /// Location Manager will track users with a 20 meters precision for best efficiency.
    private let desiredAccuracyInMeters: CLLocationAccuracy = 20

    /// Location Manager will start tracking users after they move at least 10 for best efficiency.
    private let distanceFilterInMeters: CLLocationDistance = 10

    // MARK: Class Properties

    typealias RequestLocationBlock = (_ accessGranted: Bool) -> Void

    /// Apple's CoreLocation manager.
    private let locationManager = CLLocationManager()

    /// Returns a singleton instance.
    static let sharedInstance = LocationManager()

    private override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = desiredAccuracyInMeters
        locationManager.distanceFilter = distanceFilterInMeters
    }

    func enableLocationServices(_ onSelection: RequestLocationBlock) {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            onSelection(false)
            break
        case .restricted, .denied:
            break
        case .authorizedWhenInUse:
            break
        case .authorizedAlways:
            locationManager.allowsBackgroundLocationUpdates = true
            onSelection(true)
            break
        }
    }

}

extension LocationManager: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .restricted, .denied:
            break
        case .authorizedWhenInUse:
            break
        case .authorizedAlways:
            locationManager.allowsBackgroundLocationUpdates = true
            break
        case .notDetermined:
            break
        }
    }

}

