//
//  ViewPortHelper.swift
//  Gamergrid
//
//  Created by user2 on 30/01/24.
//

import Foundation
import UIKit

func getRelativeHeight(_ size: CGFloat) -> CGFloat {
    return (size * (CGFloat(UIScreen.main.bounds.height) / 852.0)) * 0.97
}

func getRelativeWidth(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 393.0)
}

func getRelativeFontSize(_ size: CGFloat) -> CGFloat {
    return size * (CGFloat(UIScreen.main.bounds.width) / 393.0)
}
