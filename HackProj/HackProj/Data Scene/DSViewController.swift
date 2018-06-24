//
//  DSViewController.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit

public class DSViewController: UITableViewController {
    
    // MARK: Class Properties

    /// Controls data and manages presentation format.
    private var presentationModel: DSPresentationModel?

    private static var bundle: Bundle? = nil
    private static var identifier = String(describing: self)
    private static let style = UITableViewStyle.plain

    // MARK: Class Initialization & Lifecycle

    convenience public init(presentationModel: DSPresentationModel) {
        self.init(style: DSViewController.style)
        self.presentationModel = presentationModel
    }
    
    override private init(style: UITableViewStyle) {
        super.init(style: style)
    }

    override private init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: DSViewController.identifier, bundle: DSViewController.bundle)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        if let presentationModel = self.presentationModel {
            tableView.delegate = self
            tableView.dataSource = presentationModel
        }

    }

}
