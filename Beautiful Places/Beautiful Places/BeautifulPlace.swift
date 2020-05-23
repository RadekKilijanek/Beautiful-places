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
    var isFeatured: Bool
    var isFavorite: Bool 
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    var featureImage: Image? {
        guard isFeatured else { return nil }
        
        return Image(
            ImageStore.loadImage(name: "\(imageName)_feature"),
            scale: 2,
            label: Text(name))
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Wyróżnione"
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


struct BeautifulPlace_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
