//
//  BusinessLogic.swift
//
//  Created by Ani Adhikary on 23/06/19.
//  Copyright © 2022 Greetwell. All rights reserved.
//

//This class is center main class which will communicate with web service handlers and pass the status and data to ModelToUIBridge class

import UIKit

final class BusinessLogic {
    
    static let businessLogic = BusinessLogic()
    
    var dataVault = DataVault()
    
    private init() {}
    
}
