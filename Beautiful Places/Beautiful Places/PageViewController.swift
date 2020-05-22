//
//  PageViewController.swift
//  Beautiful Places
//
//  Created by Radek Kilijanek on 22/05/2020.
//  Copyright © 2020 Radek Kilijanek. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
}

struct PageViewController_Previews: PreviewProvider {
    static var previews: some View {
        PageViewController()
    }
}
