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
    
    var featured: [BeautifulPlace] {
        beautifulPlaceData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedBeautifulPlace(beautifulPlace: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets( EdgeInsets() )
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow( categoryName: key, items: self.categories[key]! )
                }
            }
            .navigationBarTitle( Text("Wyróżnione") )
        }
    }
}

struct FeaturedBeautifulPlace: View {
    var beautifulPlace: [BeautifulPlace]
    var body: some View {
        beautifulPlace[0].image.resizable()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
