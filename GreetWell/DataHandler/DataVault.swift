//
//  DataVault.swift
//
//  Created by Ani Adhikary on 23/06/19.
//  Copyright © 2022 Greetwell. All rights reserved.
//
// This modal class is used to save and get info which we store at device level
// Userdefaults related methods

import UIKit

class DataVault {
    //
    let kExistingUser = "existingUser"
    let kReadAsList = "readAsList"
    
    func setExistingUser(value: Bool) {
        saveDataInUserDefaults(value: value, forKey: kExistingUser)
    }
    
    func isExistingUser() -> Bool {
        return fetchDataFromUserDefaults(forKey: kExistingUser)
    }
    
    func setReadAsList(value: Bool) {
        saveDataInUserDefaults(value: value, forKey: kReadAsList)
    }
    
    func isReadAsList() -> Bool {
        return fetchDataFromUserDefaults(forKey: kReadAsList)
    }
        
    // MARK: - User Defaults methods -
    
    private func saveDataInUserDefaults(value: Bool, forKey: String) {
        UserDefaults.standard.set(value, forKey: forKey)
    }
    
    private func fetchDataFromUserDefaults(forKey: String) -> Bool {
        return UserDefaults.standard.bool(forKey: forKey)
    }
}
