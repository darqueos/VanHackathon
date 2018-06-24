//
//  ISViewController.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol ISViewControllerDelegate: NSObjectProtocol {
    func layoutLabel(text: String)
}

class ISViewController: UIViewController, ISViewControllerDelegate {

    // MARK: Class Properties

    /// Controls data and manages presentation format.
    private var presentationModel: ISPresentationModel?

    /// Custom View
    private var isView: ISView?

    private let disposeBag = DisposeBag()

    /// Example using RxSwift to map new label text value.
    var labelText = Variable<String>("")

    // MARK: Class Initialization & Lifecycle
    
    convenience public init(frame: CGRect, presentationModel: ISPresentationModel) {
        self.init()
        self.isView = ISView(frame: frame)
        self.view = isView
        self.presentationModel = presentationModel
        self.presentationModel?.delegate = self
    }

    override private init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override public func viewWillLayoutSubviews() {
        self.view.backgroundColor = UIColor.blue
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        presentationModel?.requestAccessToLocationServices()

        if let isView = self.isView {
            labelText.asObservable().bind(to: isView.label.rx.text).disposed(by: disposeBag)
        }
    }

    func layoutLabel(text: String) {
        self.isView?.label.text = text
        self.labelText = Variable(text)
    }

}
