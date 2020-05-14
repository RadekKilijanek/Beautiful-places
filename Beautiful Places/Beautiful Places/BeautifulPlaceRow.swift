//
//  BeautifulPlaceRow.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct BeautifulPlaceRow: View {
    var beautifulPlace: BeautifulPlace
    
    var body: some View {
        HStack {
            beautifulPlace.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(beautifulPlace.name)
            Spacer()
        }
    }
}

struct BeautifulPlaceRow_Previews: PreviewProvider {
    static var previews: some View {
        List(beautifulPlaceData) { beautifulPlace in
            BeautifulPlaceRow(beautifulPlace: beautifulPlace)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
