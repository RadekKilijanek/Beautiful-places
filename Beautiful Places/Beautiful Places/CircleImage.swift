//
//  CircleImage.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 13/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Rogalin1")
            .resizable()
            .frame(width: 350, height: 350, alignment: .center)
            .clipShape( Circle() )
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
