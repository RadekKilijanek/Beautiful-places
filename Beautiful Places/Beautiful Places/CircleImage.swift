//
//  CircleImage.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 22/03/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Rogalin1")
        .resizable()
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        .frame(width: 300.0, height:300)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
