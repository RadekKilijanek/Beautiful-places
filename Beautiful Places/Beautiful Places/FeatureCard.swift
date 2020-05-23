//
//  FeatureCard.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 23/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var beautifulPlace: BeautifulPlace
    
    var body : some View {
        beautifulPlace.featureImage?
        .resizable()
        .aspectRatio(3 / 2, contentMode: .fit)
        .overlay(TextOverlay (beautifulPlace: beautifulPlace) )
    }
}

struct TextOverlay: View {
  var beautifulPlace: BeautifulPlace
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle().fill(gradient)
            VStack(alignment: .leading) {
                Text(beautifulPlace.name)
                    .font(.title)
                    .bold()
                Text(beautifulPlace.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}
struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(beautifulPlace: features[0])
    }
}
