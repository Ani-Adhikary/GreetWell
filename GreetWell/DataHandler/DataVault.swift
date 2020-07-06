//
//  DataVault.swift
//  Sarvopari
//
//  Created by Ani Adhikary on 23/06/19.
//  Copyright © 2019 TheTechStory. All rights reserved.
//
// This modal class is used to save and get info which we store at device level
// Userdefaults related methods

import UIKit

class DataVault {
    //
    let kExistingUser = "existingUser"
    
    func setExistingUser(value: Bool) {
        saveDataInUserDefaults(value: value, forKey: kExistingUser)
    }
    
    func isExistingUser() -> Bool {
        return fetchDataFromUserDefaults(forKey: kExistingUser)
    }
        
    // MARK: - User Defaults methods -
    
    private func saveDataInUserDefaults(value: Bool, forKey: String) {
        UserDefaults.standard.set(value, forKey: forKey)
    }
    
    private func fetchDataFromUserDefaults(forKey: String) -> Bool {
        return UserDefaults.standard.bool(forKey: forKey)
    }
}
