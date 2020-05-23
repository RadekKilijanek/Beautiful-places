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
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController (
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        return pageViewController
    }
    
    
    
    func updateUIViewController(_pageViewController: UIPageViewController, context: Context) {
        PageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true
        )
    }
}
