//
//  DeviceEnv.swift
//  StarterAppSwift5XIB
//
//  Created by Ani Adhikary on 06/01/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class DeviceEnv {
    static var isIpad : Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
