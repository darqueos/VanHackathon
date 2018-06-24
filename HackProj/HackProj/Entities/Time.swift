//
//  Time.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import RealmSwift

class Time: Object {

    /// This type represents if the user is comming or going from the preset location.
    ///
    /// - arriving: Whenever the user walks in the preset region.
    /// - departuring: Whenever the user walks out the preset region.
    enum TimeState: Int {
        case arriving = 0
        case departuring = 1
    }


    /// ID used by Realm.
    @objc dynamic private var id = UUID().uuidString

    /// Marked time.
    @objc dynamic var date: Date?

    /// Location where the time was registered.
    @objc dynamic var location: Location?

    /// Used by realm to set the object's key.
    ///
    /// - Returns: String containing the key property.
    override static func primaryKey() -> String? {
        return "id"
    }

}
