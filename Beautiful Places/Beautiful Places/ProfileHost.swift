//
//  ProfileHost.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 14/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfil = Profile.default
    
    var body: some View {
        Text("Profil: \(draftProfil.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
