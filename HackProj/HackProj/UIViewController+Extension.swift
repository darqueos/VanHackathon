//
//  UIViewController+Extension.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit

extension UIViewController {

    /// Resize its view's frame to occupy all space within bounds.
    ///
    /// - Parameter bounds: Window size to be occupied.
    func resize(bounds: CGRect) {
        self.view.frame = bounds
        self.view.layoutIfNeeded()
    }

}
