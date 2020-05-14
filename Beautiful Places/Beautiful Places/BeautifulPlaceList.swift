//
//  BeautifulPlaceList.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct BeautifulPlaceList: View {
    var body: some View {
        NavigationView {
            List(beautifulPlaceData) { beautifulPlace in
                NavigationLink( destination: ContentView(beatifulPlace: beautifulPlace) ) {
                    BeautifulPlaceRow(beautifulPlace: beautifulPlace)
                }
            }
            .navigationBarTitle( Text("Beautiful Place") )
        }
    }
}

struct BeautifulPlaceList_Previews: PreviewProvider {
    static var previews: some View {
        BeautifulPlaceList()
    }
}
