//
//  ContentView.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 22/03/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Rogalin")
                .font(.title)
            HStack {
                Text("Łęgi Rogalińskie11111")
                    .font(.subheadline)
                Spacer()
                Text("Wielkopolska")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
