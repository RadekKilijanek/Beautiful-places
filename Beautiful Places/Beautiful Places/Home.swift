//
//  Home.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categories: [String: [BeautifulPlace]] {
        Dictionary(
        grouping: beautifulPlaceData,
        by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationBarTitle( Text("Wyróżnione") )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
