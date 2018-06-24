//
//  ISView.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit
import SnapKit

public class ISView: UIView {

    public var label: UILabel! {
        didSet {
            label.backgroundColor = UIColor.orange
            label.text = """
            This application is location based. Please allow the app to receive
            location updates so we can automatically track whenever you're within
            you location of interest.
            """

            label.snp.makeConstraints { (maker) in
                maker.center.equalTo(self.snp.center)
                maker.height.equalTo(frame.height * 0.25)
                maker.width.equalTo(frame.width * 0.75)
            }
            addSubview(label)
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        self.label = UILabel(frame: self.frame)
        backgroundColor = UIColor.white
    }

}
