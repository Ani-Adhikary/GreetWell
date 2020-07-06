//
//  HomeGreetingResponse.swift
//  GreetWell
//
//  Created by Ani Adhikary on 05/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import Foundation

class HomeGreetingResponse {
    
    static func getGreetings() -> [Greeting] {
        
        var birthDayGreeting =  Greeting()
        if let birthDayGreet = getBirthDayGreetings().randomItem() {
            birthDayGreeting = birthDayGreet
        }
        let greetings = [
            birthDayGreeting,
//            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome2ID, greeting: GreetingsHomeConstants.greetingHome2Text, image: GreetingsHomeConstants.greetingHome2Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome3ID, greeting: GreetingsHomeConstants.greetingHome3Text, image: GreetingsHomeConstants.greetingHome3Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome4ID, greeting: GreetingsHomeConstants.greetingHome4Text, image: GreetingsHomeConstants.greetingHome4Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome5ID, greeting: GreetingsHomeConstants.greetingHome5Text, image: GreetingsHomeConstants.greetingHome5Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome6ID, greeting: GreetingsHomeConstants.greetingHome6Text, image: GreetingsHomeConstants.greetingHome6Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome7ID, greeting: GreetingsHomeConstants.greetingHome7Text, image: GreetingsHomeConstants.greetingHome7Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome8ID, greeting: GreetingsHomeConstants.greetingHome8Text, image: GreetingsHomeConstants.greetingHome8Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome9ID, greeting: GreetingsHomeConstants.greetingHome9Text, image: GreetingsHomeConstants.greetingHome9Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome10ID, greeting: GreetingsHomeConstants.greetingHome10Text, image: GreetingsHomeConstants.greetingHome10Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome11ID, greeting: GreetingsHomeConstants.greetingHome11Text, image: GreetingsHomeConstants.greetingHome11Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome12ID, greeting: GreetingsHomeConstants.greetingHome12Text, image: GreetingsHomeConstants.greetingHome12Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome13ID, greeting: GreetingsHomeConstants.greetingHome13Text, image: GreetingsHomeConstants.greetingHome13Image, additionalInfo: "")
        ]
        
        return greetings
    }
    
    static func getBirthDayGreetings() -> [Greeting] {
        
        let greetings = [
            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome2ID, greeting: GreetingsHomeConstants.greetingHome2Text, image: GreetingsHomeConstants.greetingHome2Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome3ID, greeting: GreetingsHomeConstants.greetingHome3Text, image: GreetingsHomeConstants.greetingHome3Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome4ID, greeting: GreetingsHomeConstants.greetingHome4Text, image: GreetingsHomeConstants.greetingHome4Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome5ID, greeting: GreetingsHomeConstants.greetingHome5Text, image: GreetingsHomeConstants.greetingHome5Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome6ID, greeting: GreetingsHomeConstants.greetingHome6Text, image: GreetingsHomeConstants.greetingHome6Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome7ID, greeting: GreetingsHomeConstants.greetingHome7Text, image: GreetingsHomeConstants.greetingHome7Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome8ID, greeting: GreetingsHomeConstants.greetingHome8Text, image: GreetingsHomeConstants.greetingHome8Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome9ID, greeting: GreetingsHomeConstants.greetingHome9Text, image: GreetingsHomeConstants.greetingHome9Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome10ID, greeting: GreetingsHomeConstants.greetingHome10Text, image: GreetingsHomeConstants.greetingHome10Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome11ID, greeting: GreetingsHomeConstants.greetingHome11Text, image: GreetingsHomeConstants.greetingHome11Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome12ID, greeting: GreetingsHomeConstants.greetingHome12Text, image: GreetingsHomeConstants.greetingHome12Image, additionalInfo: ""),
            Greeting(id: GreetingsHomeConstants.greetingHome13ID, greeting: GreetingsHomeConstants.greetingHome13Text, image: GreetingsHomeConstants.greetingHome13Image, additionalInfo: "")
        ]
        
        return greetings
    }
}

class Greeting {
    let id: Int
    let greeting: String
    let greetingImage: String
    let additionalInfo: String
    
    init() {
        id = 0
        greeting = ""
        greetingImage = ""
        additionalInfo = ""
    }
    
    init(id: Int, greeting: String, image: String, additionalInfo: String) {
        self.id = id
        self.greeting = greeting
        self.greetingImage = image
        self.additionalInfo = additionalInfo
    }
}
