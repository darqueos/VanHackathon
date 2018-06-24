//
//  ISPresentationModel.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit

public class ISPresentationModel: UIPresentationModel {

    var placeholder: String?

    public override init() {
        super.init()
        placeholder = "Test"
    }

}
