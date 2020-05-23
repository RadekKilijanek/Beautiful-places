//
//  MapView.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 13/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
   // var beatifulPlace: BeautifulPlace
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let mylocation = CLLocationCoordinate2D(latitude: 16.606022, longitude: 52.702563)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = mylocation
        
        annotation.title = "Punkt"
       // View.addAnnotation(annotation)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: beautifulPlaceData[0].locationCoordinate)
    }
}
