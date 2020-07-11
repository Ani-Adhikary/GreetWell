//
//  HomeGreetingResponse.swift
//  GreetWell
//
//  Created by Ani Adhikary on 05/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import Foundation

class HomeGreetingResponse {
    
    static func getGreetings(greetType: GreetingType, greetingPageCategory: GreetingPageCategory) -> [Greeting] {
        
        print("Greet type------- \(greetType.rawValue)")
        
        //let birthDayGreet: Greeting = getBirthDayGreetings().randomItem()
        let birthdayGreetings = getBirthDayGreetings()
        let mothersDayGreetings = getMothersDayGreetings()
        
        var greetings = [
            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome2ID, greeting: GreetingsHomeConstants.greetingHome2Text, image: GreetingsHomeConstants.greetingHome2Image, additionalInfo: "", greetingType: .valentinesDay, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome3ID, greeting: GreetingsHomeConstants.greetingHome3Text, image: GreetingsHomeConstants.greetingHome3Image, additionalInfo: "", greetingType: .womansDay, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome4ID, greeting: GreetingsHomeConstants.greetingHome4Text, image: GreetingsHomeConstants.greetingHome4Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome5ID, greeting: GreetingsHomeConstants.greetingHome5Text, image: GreetingsHomeConstants.greetingHome5Image, additionalInfo: "", greetingType: .eid, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome6ID, greeting: GreetingsHomeConstants.greetingHome6Text, image: GreetingsHomeConstants.greetingHome6Image, additionalInfo: "", greetingType: .fathersDay, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome7ID, greeting: GreetingsHomeConstants.greetingHome7Text, image: GreetingsHomeConstants.greetingHome7Image, additionalInfo: "", greetingType: .corona, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome8ID, greeting: GreetingsHomeConstants.greetingHome8Text, image: GreetingsHomeConstants.greetingHome8Image, additionalInfo: "", greetingType: .usaIndependenceDay, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome9ID, greeting: GreetingsHomeConstants.greetingHome9Text, image: GreetingsHomeConstants.greetingHome9Image, additionalInfo: "", greetingType: .janmashtami, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome10ID, greeting: GreetingsHomeConstants.greetingHome10Text, image: GreetingsHomeConstants.greetingHome10Image, additionalInfo: "", greetingType: .ganeshChaturthi, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome11ID, greeting: GreetingsHomeConstants.greetingHome11Text, image: GreetingsHomeConstants.greetingHome11Image, additionalInfo: "", greetingType: .thanksgiving, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome12ID, greeting: GreetingsHomeConstants.greetingHome12Text, image: GreetingsHomeConstants.greetingHome12Image, additionalInfo: "", greetingType: .christmas, greetingPageCategory: .homePage),
            Greeting(id: GreetingsHomeConstants.greetingHome13ID, greeting: GreetingsHomeConstants.greetingHome13Text, image: GreetingsHomeConstants.greetingHome13Image, additionalInfo: "", greetingType: .newYear, greetingPageCategory: .homePage)
        ]
        
        greetings += birthdayGreetings
        greetings += mothersDayGreetings
        
//        let filteredGreetings = greetings.filter { greeting  in
//            greeting.greetingType == greetType
//        }
        
//        let filteredGreetings = greetings.filter {
//            $0.greetingType == greetType
//        }
        
        var filteredGreetings: [Greeting] = []
        if greetingPageCategory == .homePage {
            filteredGreetings = greetings.filter {
                $0.greetingPageCategory == .homePage
            }
        } else if greetingPageCategory == .greetingPage {
            filteredGreetings = greetings.filter {
                $0.greetingType == greetType
            }
        }
        
        return filteredGreetings.shuffled()
    }
    
    static func getBirthDayGreetings() -> [Greeting] {
        
        let greetings = [
            Greeting(id: BirthdayGreetingConstants.bdayGreeting1ID, greeting: BirthdayGreetingConstants.bdayGreeting1Text, image: BirthdayGreetingConstants.bdayGreeting1Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting2ID, greeting: BirthdayGreetingConstants.bdayGreeting2Text, image: BirthdayGreetingConstants.bdayGreeting2Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting3ID, greeting: BirthdayGreetingConstants.bdayGreeting3Text, image: BirthdayGreetingConstants.bdayGreeting3Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting4ID, greeting: BirthdayGreetingConstants.bdayGreeting4Text, image: BirthdayGreetingConstants.bdayGreeting4Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting5ID, greeting: BirthdayGreetingConstants.bdayGreeting5Text, image: BirthdayGreetingConstants.bdayGreeting5Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting6ID, greeting: BirthdayGreetingConstants.bdayGreeting6Text, image: BirthdayGreetingConstants.bdayGreeting6Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting7ID, greeting: BirthdayGreetingConstants.bdayGreeting7Text, image: BirthdayGreetingConstants.bdayGreeting7Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting8ID, greeting: BirthdayGreetingConstants.bdayGreeting8Text, image: BirthdayGreetingConstants.bdayGreeting8Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting9ID, greeting: BirthdayGreetingConstants.bdayGreeting9Text, image: BirthdayGreetingConstants.bdayGreeting9Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting10ID, greeting: BirthdayGreetingConstants.bdayGreeting10Text, image: BirthdayGreetingConstants.bdayGreeting10Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .greetingPage)
        ]
        
        return greetings
    }
    
    static func getMothersDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: MothersDayGreetingConstants.mdayGreeting1ID, greeting: MothersDayGreetingConstants.mdayGreeting1Text, image: MothersDayGreetingConstants.mdayGreeting1Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting2ID, greeting: MothersDayGreetingConstants.mdayGreeting2Text, image: MothersDayGreetingConstants.mdayGreeting2Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting3ID, greeting: MothersDayGreetingConstants.mdayGreeting3Text, image: MothersDayGreetingConstants.mdayGreeting3Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting4ID, greeting: MothersDayGreetingConstants.mdayGreeting4Text, image: MothersDayGreetingConstants.mdayGreeting4Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting5ID, greeting: MothersDayGreetingConstants.mdayGreeting5Text, image: MothersDayGreetingConstants.mdayGreeting5Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting6ID, greeting: MothersDayGreetingConstants.mdayGreeting6Text, image: MothersDayGreetingConstants.mdayGreeting6Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting7ID, greeting: MothersDayGreetingConstants.mdayGreeting7Text, image: MothersDayGreetingConstants.mdayGreeting7Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
//            Greeting(id: MothersDayGreetingConstants.mdayGreeting8ID, greeting: MothersDayGreetingConstants.mdayGreeting8Text, image: MothersDayGreetingConstants.mdayGreeting8Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting9ID, greeting: MothersDayGreetingConstants.mdayGreeting9Text, image: MothersDayGreetingConstants.mdayGreeting9Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting10ID, greeting: MothersDayGreetingConstants.mdayGreeting10Text, image: MothersDayGreetingConstants.mdayGreeting10Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .greetingPage)
        ]
        
        return greetings
    }
    
    static func getIndividualGreetingsPageTitle(greetType: GreetingType) -> String {
        switch greetType {
        case .birthday:
            return "Happy Birthday"
        case .valentinesDay:
            return "Valentines Day"
        case .womansDay:
            return "Woman's Day"
        case .mothersDay:
            return "Mother's Day"
        case .eid:
            return "Eid"
        case .fathersDay:
            return "Father's Day"
        case .corona:
            return "Stay Safe"
        case .usaIndependenceDay:
            return "USA Independence Day"
        case .janmashtami:
            return "Janmashtami"
        case .ganeshChaturthi:
            return "Ganesh Chaturthi"
        case .thanksgiving:
            return "thanksgiving"
        case .christmas:
            return "Merry Christmas"
        case .newYear:
            return "Happy New Year"
        default:
            return "Not found"
        }
    }
}

class Greeting {
    let id: Int
    let greeting: String
    let greetingImage: String
    let additionalInfo: String
    var greetingType: GreetingType
    var greetingPageCategory: GreetingPageCategory
    
    init() {
        id = 0
        greeting = ""
        greetingImage = ""
        additionalInfo = ""
        greetingType = .home
        greetingPageCategory = .homePage
    }
    
    init(id: Int, greeting: String, image: String, additionalInfo: String, greetingType: GreetingType, greetingPageCategory: GreetingPageCategory) {
        self.id = id
        self.greeting = greeting
        self.greetingImage = image
        self.additionalInfo = additionalInfo
        self.greetingType = greetingType
        self.greetingPageCategory = greetingPageCategory
    }
}

enum GreetingType: String {
    case home
    case birthday
    case valentinesDay
    case womansDay
    case mothersDay
    case eid
    case fathersDay
    case corona
    case usaIndependenceDay
    case janmashtami
    case ganeshChaturthi
    case thanksgiving
    case christmas
    case newYear
}

enum GreetingPageCategory: String {
    case homePage
    case greetingPage
}
