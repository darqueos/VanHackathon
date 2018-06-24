//
//  Location.swift
//  HackProj
//
//  Created by Eduardo Quadros on 24/06/18.
//  Copyright © 2018 Eduardo Quadros. All rights reserved.
//

import RealmSwift

class Location: Object {

    /// This type represents what the venue is.
    ///
    /// - office: Office; Work; Job
    /// - school: School; University; College
    enum LocationType: Int {
        case office = 0
        case school = 1

        /// Returns a string representing `LocationType`.
        ///
        /// - Returns: String with the location type.
        func toString() -> String {
            switch self {
            case .office:
                return "Office"
            default:
                return "School"
            }
        }
    }

    /// ID used by Realm.
    @objc dynamic private var id = UUID().uuidString

    /// Location latitude.
    @objc dynamic var latitude: Double = 0

    /// Location longitude.
    @objc dynamic var longitude: Double = 0

    /// Trackable radius from the location.
    @objc dynamic var radius: Double = 0

    /// Location type. Maps to `LocationType`.
    @objc dynamic var type: Int = 0

    /// Used by realm to set the object's key.
    ///
    /// - Returns: String containing the key property.
    override static func primaryKey() -> String? {
        return "id"
    }

}
