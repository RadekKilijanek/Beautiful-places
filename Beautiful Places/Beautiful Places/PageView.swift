//
//  PageView.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 23/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController (rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(BeautifulPlace: $0) })
            .aspectRatio(3/2, ContentMode: .fit)
    }
}
