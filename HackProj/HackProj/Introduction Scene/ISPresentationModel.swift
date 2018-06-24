//
//  ISPresentationModel.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

class ISPresentationModel: UIPresentationModel {

    weak var delegate: ISViewControllerDelegate?

    func requestAccessToLocationServices() {
        let locationManager = LocationManager.sharedInstance.enableLocationServices { (accessGranted) in
            if accessGranted, let delegate = self.delegate {
                delegate.layoutLabel(text:
                    """
                    Please fix your location services settings as this app main focus is
                    tracking you in order to automatically clock you in.
                    """
                )
            }
        }
    }

}
