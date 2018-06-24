//
//  ISViewController.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit

public class ISViewController: UIViewController {

    // MARK: Class Properties

    /// Controls data and manages presentation format.
    private var presentationModel: ISPresentationModel?

    // MARK: Class Initialization & Lifecycle
    
    convenience public init(presentationModel: ISPresentationModel) {
        self.init()
        self.presentationModel = presentationModel
    }

    override private init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
