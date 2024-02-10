//
//  UINavigationControllerExtension.swift
//  Gamergrid
//
//  Created by user2 on 05/02/24.
//

import Foundation
import UIKit

// Provide Default Swipe left gesture for back navigation to all screen.
extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
