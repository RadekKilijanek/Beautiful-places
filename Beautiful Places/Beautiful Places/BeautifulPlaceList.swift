//
//  BeautifulPlaceList.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct BeautifulPlaceList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Tylko Ulubione")
                }
                
                ForEach(userData.beautifulPlace) { beautifulPlace in
                    if !self.userData.showFavoritesOnly || beautifulPlace.isFavorite {
                        NavigationLink( destination: ContentView(beatifulPlace: beautifulPlace) ) {
                            BeautifulPlaceRow(beautifulPlace: beautifulPlace)
                        }
                    }
                }
                .navigationBarTitle( Text("Beautiful Place") )
            }
        }
    }
}

struct BeautifulPlaceList_Previews: PreviewProvider {
    static var previews: some View {
        BeautifulPlaceList()
        .environmentObject( UserData() )
    }
}
