//
//  Landmark.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 13/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI
import CoreLocation

struct BeautifulPlace: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
   // var isFavorite: Bool - dodać później
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    enum Category: String, CaseIterable, Codable, Hashable {
        //case featured = "Wyróżnione"
        case landscape = "Krajobraz"
        case abandoned = "Opuszczone"
        case city = "Miasto"
    }
}

extension BeautifulPlace {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

