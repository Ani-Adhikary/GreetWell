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
        let womensDayGreetings = getWomensDayGreetings()
        let diwaliGreetings = getDiwaliGreetings()
        
        //var greetings1 = [Greeting]()
        var greetings = [
            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome2ID, greeting: GreetingsHomeConstants.greetingHome2Text, image: GreetingsHomeConstants.greetingHome2Image, additionalInfo: "", greetingType: .valentinesDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GreetingsHomeConstants.greetingHome5ID, greeting: GreetingsHomeConstants.greetingHome5Text, image: GreetingsHomeConstants.greetingHome5Image, additionalInfo: "", greetingType: .eid, greetingPageCategory: .homePage, favourite: false),
                                    
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
        greetings += womensDayGreetings
        greetings += diwaliGreetings
        
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
            Greeting(id: MothersDayGreetingConstants.mdayGreeting8ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting8Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .homePage, favourite: false),
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
            Greeting(id: FathersDayGreetingConstants.fdayGreeting11ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting11Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting12ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting12Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting13ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting13Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting14ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting14Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting15ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting15Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting16ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting16Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting17ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting17Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting18ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting18Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false)
        ]
        
        return greetings
    }
    
    static func getWomensDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: WomensDayGreetingConstants.wdayGreeting1ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting1Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting2ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting2Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting3ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting3Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting4ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting4Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting5ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting5Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting6ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting6Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting7ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting7Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting8ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting8Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting9ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting9Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting10ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting10Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting11ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting11Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting12ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting12Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting13ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting13Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false)
        ]
        
        return greetings
    }
    
    static func getDiwaliGreetings() -> [Greeting] {
        let greetings = [
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting1ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting1Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting2ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting2Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting3ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting3Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting4ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting4Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting5ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting5Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting6ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting6Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .homePage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting7ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting7Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting8ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting8Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting9ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting9Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting10ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting10Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting11ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting11Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting12ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting12Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting13ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting13Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting14ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting14Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
        Greeting(id: DiwaliGreetingConstants.diwaliGreeting15ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting15Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getAnyGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting1ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting1Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false)
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
        case .diwali:
            return "Diwali"
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
    case diwali
}

enum GreetingPageCategory: String {
    case homePage
    case greetingPage
}
