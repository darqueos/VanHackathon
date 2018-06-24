//
//  ISView.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit

public class ISView: UIView {

    public var label: UILabel! {
        let label = UILabel(frame: self.frame)
        label.text = """
            This application is location based. Please allow the app to receive
            location updates so we can automatically track whenever you're within
            you location of interest.
        """

        return label
    }

    override public func layoutSubviews() {
        super.layoutSubviews()

    }

    private func layoutLabel() {
        label


        self.addSubview(label)
    }

}
