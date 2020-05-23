//
//  ContentView.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 22/03/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    //@State private var coordinates = CLLocationCoordinate2D()
    var beatifulPlace: BeautifulPlace
    
    var beautifulPlaceIndex: Int {
        userData.beautifulPlace.firstIndex(where: { $0.id == beatifulPlace.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinates: beatifulPlace.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: beatifulPlace.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(beatifulPlace.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.beautifulPlace[self.beautifulPlaceIndex].isFavorite.toggle()
                    }) {
                        if self.userData.beautifulPlace[self.beautifulPlaceIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack {
                    Text(beatifulPlace.park)
                        .font(.subheadline)
                    Spacer()
                    Text(beatifulPlace.name)
                        .font(.subheadline)
                    Spacer()
                    Text(beatifulPlace.city)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle( Text(beatifulPlace.name), displayMode: .inline )
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(beatifulPlace: beautifulPlaceData[0])
                .environmentObject( UserData() )
        }
    }
}
