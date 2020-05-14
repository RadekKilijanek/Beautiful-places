//
//  CategoryRow.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [BeautifulPlace]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { BeautifulPlace in
                        CategoryItem(beautifulPlace: BeautifulPlace)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var beautifulPlace: BeautifulPlace
    var body: some View {
        VStack(alignment: .leading) {
            beautifulPlace.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(beautifulPlace.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: beautifulPlaceData[0].category.rawValue,
            items: Array( beautifulPlaceData.prefix(4) )
        )
    }
}
