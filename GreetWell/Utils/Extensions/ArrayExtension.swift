//
//  ArrayExtension.swift
//  GreetWell
//
//  Created by Ani Adhikary on 30/10/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//

import Foundation

extension Array {
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
