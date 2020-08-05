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
        let fathersDayGreetings = getFathersDayGreetings()
        
        var greetings = [
            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome2ID, greeting: GreetingsHomeConstants.greetingHome2Text, image: GreetingsHomeConstants.greetingHome2Image, additionalInfo: "", greetingType: .valentinesDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome3ID, greeting: GreetingsHomeConstants.greetingHome3Text, image: GreetingsHomeConstants.greetingHome3Image, additionalInfo: "", greetingType: .womansDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome4ID, greeting: GreetingsHomeConstants.greetingHome4Text, image: GreetingsHomeConstants.greetingHome4Image, additionalInfo: "", greetingType: .mothersDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome5ID, greeting: GreetingsHomeConstants.greetingHome5Text, image: GreetingsHomeConstants.greetingHome5Image, additionalInfo: "", greetingType: .eid, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome6ID, greeting: GreetingsHomeConstants.greetingHome6Text, image: GreetingsHomeConstants.greetingHome6Image, additionalInfo: "", greetingType: .fathersDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome7ID, greeting: GreetingsHomeConstants.greetingHome7Text, image: GreetingsHomeConstants.greetingHome7Image, additionalInfo: "", greetingType: .corona, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome8ID, greeting: GreetingsHomeConstants.greetingHome8Text, image: GreetingsHomeConstants.greetingHome8Image, additionalInfo: "", greetingType: .usaIndependenceDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome9ID, greeting: GreetingsHomeConstants.greetingHome9Text, image: GreetingsHomeConstants.greetingHome9Image, additionalInfo: "", greetingType: .janmashtami, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome10ID, greeting: GreetingsHomeConstants.greetingHome10Text, image: GreetingsHomeConstants.greetingHome10Image, additionalInfo: "", greetingType: .ganeshChaturthi, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome11ID, greeting: GreetingsHomeConstants.greetingHome11Text, image: GreetingsHomeConstants.greetingHome11Image, additionalInfo: "", greetingType: .thanksgiving, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome12ID, greeting: GreetingsHomeConstants.greetingHome12Text, image: GreetingsHomeConstants.greetingHome12Image, additionalInfo: "", greetingType: .christmas, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome13ID, greeting: GreetingsHomeConstants.greetingHome13Text, image: GreetingsHomeConstants.greetingHome13Image, additionalInfo: "", greetingType: .newYear, greetingPageCategory: .homePage, favourite: false)
        ]
        
        greetings += birthdayGreetings
        greetings += mothersDayGreetings
        greetings += fathersDayGreetings
        
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
            Greeting(id: BirthdayGreetingConstants.bdayGreeting1ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting1Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting2ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting2Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting3ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting3Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting4ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting4Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting5ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting5Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting6ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting6Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting7ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting7Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting8ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting8Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting9ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting9Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: BirthdayGreetingConstants.bdayGreeting10ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting10Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false)
        ]
        
        return greetings
    }
    
    static func getMothersDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: MothersDayGreetingConstants.mdayGreeting1ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting1Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting2ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting2Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting3ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting3Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting4ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting4Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting5ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting5Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting6ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting6Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting7ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting7Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting9ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting9Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting10ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting10Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false)
        ]
        
        return greetings
    }
    
    static func getFathersDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: FathersDayGreetingConstants.fdayGreeting1ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting1Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting2ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting2Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting3ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting3Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting4ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting4Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting5ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting5Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting6ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting6Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting7ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting7Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting8ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting8Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting9ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting9Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting10ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting10Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting11ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting11Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false)
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
            return "Women's Day"
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
    var favourite: Bool
    
    init() {
        id = 0
        greeting = ""
        greetingImage = ""
        additionalInfo = ""
        greetingType = .home
        greetingPageCategory = .homePage
        favourite = false
    }
    
    init(id: Int, greeting: String, image: String, additionalInfo: String, greetingType: GreetingType, greetingPageCategory: GreetingPageCategory, favourite: Bool) {
        self.id = id
        self.greeting = greeting
        self.greetingImage = image
        self.additionalInfo = additionalInfo
        self.greetingType = greetingType
        self.greetingPageCategory = greetingPageCategory
        self.favourite = favourite
    }
}

extension Greeting: Equatable {
    static func ==(lhs: Greeting, rhs: Greeting) -> Bool {
        return lhs.id == rhs.id
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
