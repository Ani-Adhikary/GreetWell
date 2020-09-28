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
        let coronaInfo = getCoronaGreetings()
        let janmashtamiGreetings = getJanmashtamiGreetings()
        let halloweenGreetings = getHalloweenGreetings()
        let easterGreetings = getEasterGreetings()
        let eidGreetings = getEidGreetings()
        let valentinesDayGreetings = getValentinesDayGreetings()
        let christmasGreetings = getChristmasGreetings()
        
        //var greetings1 = [Greeting]()
        var greetings = [
            Greeting(id: GreetingsHomeConstants.greetingHome1ID, greeting: GreetingsHomeConstants.greetingHome1Text, image: GreetingsHomeConstants.greetingHome1Image, additionalInfo: "", greetingType: .birthday, greetingPageCategory: .homePage, favourite: false),
            
            Greeting(id: GreetingsHomeConstants.greetingHome8ID, greeting: GreetingsHomeConstants.greetingHome8Text, image: GreetingsHomeConstants.greetingHome8Image, additionalInfo: "", greetingType: .usaIndependenceDay, greetingPageCategory: .homePage, favourite: false),
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
        greetings += coronaInfo
        greetings += janmashtamiGreetings
        greetings += halloweenGreetings
        greetings += easterGreetings
        greetings += eidGreetings
        greetings += valentinesDayGreetings
        greetings += christmasGreetings
        
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
            Greeting(id: MothersDayGreetingConstants.mdayGreeting10ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting10Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: MothersDayGreetingConstants.mdayGreeting11ID, greeting: MothersDayGreetingConstants.mdayGreetingText, image: MothersDayGreetingConstants.mdayGreeting11Image, additionalInfo: MothersDayGreetingConstants.mDayGreetingAccLabel, greetingType: .mothersDay, greetingPageCategory: .greetingPage, favourite: false)
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
            Greeting(id: FathersDayGreetingConstants.fdayGreeting15ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting15Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting16ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting16Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: FathersDayGreetingConstants.fdayGreeting17ID, greeting: FathersDayGreetingConstants.fdayGreetingText, image: FathersDayGreetingConstants.fdayGreeting17Image, additionalInfo: FathersDayGreetingConstants.fDayGreetingAccLabel, greetingType: .fathersDay, greetingPageCategory: .homePage, favourite: false),
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
            Greeting(id: WomensDayGreetingConstants.wdayGreeting13ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting13Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting14ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting14Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting15ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting15Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting16ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting16Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting17ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting17Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting18ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting18Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: WomensDayGreetingConstants.wdayGreeting19ID, greeting: WomensDayGreetingConstants.wdayGreetingText, image: WomensDayGreetingConstants.wdayGreeting19Image, additionalInfo: WomensDayGreetingConstants.wdayGreetingAccLabel, greetingType: .womansDay, greetingPageCategory: .greetingPage, favourite: false)
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
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting6ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting6Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting7ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting7Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting8ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting8Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting9ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting9Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting10ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting10Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting11ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting11Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting12ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting12Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting13ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting13Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting14ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting14Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting15ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting15Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting16ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting16Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting17ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting17Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting18ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting18Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting19ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting19Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting20ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting20Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting21ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting21Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting22ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting22Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting23ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting23Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting24ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting24Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting25ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting25Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getCoronaGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: CoronaInfoConstants.coronaInfo1ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo1Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo2ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo2Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo3ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo3Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo4ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo4Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo5ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo5Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo6ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo6Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo7ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo7Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo8ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo8Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo9ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo9Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo10ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo10Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo11ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo11Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo12ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo12Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: CoronaInfoConstants.coronaInfo13ID, greeting: CoronaInfoConstants.coronaInfoText, image: CoronaInfoConstants.coronaInfo13Image, additionalInfo: CoronaInfoConstants.coronaAccLabel, greetingType: .corona, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getJanmashtamiGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: JanmashtamiGreetingConstants.janGreeting1ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting1Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting2ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting2Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting3ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting3Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting4ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting4Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting5ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting5Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting6ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting6Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting7ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting7Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting8ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting8Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting9ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting9Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting10ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting10Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting11ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting11Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting12ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting12Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting13ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting13Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting14ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting14Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting15ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting15Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: JanmashtamiGreetingConstants.janGreeting16ID, greeting: JanmashtamiGreetingConstants.janGreetingText, image: JanmashtamiGreetingConstants.janGreeting16Image, additionalInfo: JanmashtamiGreetingConstants.janGreetingAccLabel, greetingType: .janmashtami, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getHalloweenGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting1ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting1Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting2ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting2Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting3ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting3Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting4ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting4Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting5ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting5Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting6ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting6Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting7ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting7Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting8ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting8Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting9ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting9Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting10ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting10Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting11ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting11Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: HalloweenGreetingConstants.halloweenGreeting12ID, greeting: HalloweenGreetingConstants.halloweenGreetingText, image: HalloweenGreetingConstants.halloweenGreeting1Image, additionalInfo: HalloweenGreetingConstants.halloweenGreetingAccLabel, greetingType: .halloween, greetingPageCategory: .greetingPage, favourite: false),
        ]
        return greetings
    }
    
    static func getEasterGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: EasterGreetingConstants.easterGreeting1ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting1Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting2ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting2Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting3ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting3Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting4ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting4Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting5ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting5Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting6ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting6Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting7ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting7Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting8ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting8Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting9ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting9Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting10ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting10Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting11ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting11Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting12ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting12Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting13ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting13Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting14ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting14Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting15ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting15Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting16ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting16Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EasterGreetingConstants.easterGreeting17ID, greeting: EasterGreetingConstants.easterGreetingText, image: EasterGreetingConstants.easterGreeting17Image, additionalInfo: EasterGreetingConstants.easterGreetingAccLabel, greetingType: .easter, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getUSIndependenceDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting1ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting1Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getEidGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: EidGreetingConstants.eidGreeting1ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting1Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting2ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting2Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting3ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting3Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting4ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting4Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting5ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting5Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting6ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting6Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting7ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting7Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting8ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting8Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting9ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting9Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting10ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting10Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting11ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting11Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting12ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting12Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting13ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting13Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting14ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting14Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting15ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting15Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting16ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting16Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: EidGreetingConstants.eidGreeting32ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting32Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getValentinesDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: ValentinesDayGreetingConstants.vdayGreeting1ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting1Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting2ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting2Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting3ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting3Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting4ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting4Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting5ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting5Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting6ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting6Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting7ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting7Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting8ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting8Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting9ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting9Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting10ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting10Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting11ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting11Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting12ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting12Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting13ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting13Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting14ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting14Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting15ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting15Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting16ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting16Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .greetingPage, favourite: false),
           Greeting(id: ValentinesDayGreetingConstants.vdayGreeting30ID, greeting: ValentinesDayGreetingConstants.vdayGreetingText, image: ValentinesDayGreetingConstants.vdayGreeting30Image, additionalInfo: ValentinesDayGreetingConstants.vdayGreetingAccLabel, greetingType: .valentinesDay, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getChristmasGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: ChristmasGreetingConstants.christmasGreeting1ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting1Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting2ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting2Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting3ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting3Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting4ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting4Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting5ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting5Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting6ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting6Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting7ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting7Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting8ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting8Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting9ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting9Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting10ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting10Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting11ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting11Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting12ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting12Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting13ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting13Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting14ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting14Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting15ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting15Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting16ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting16Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    static func getDurgaPujaGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: DiwaliGreetingConstants.diwaliGreeting1ID, greeting: DiwaliGreetingConstants.diwaliGreetingText, image: DiwaliGreetingConstants.diwaliGreeting1Image, additionalInfo: DiwaliGreetingConstants.diwaliGreetingAccLabel, greetingType: .diwali, greetingPageCategory: .greetingPage, favourite: false)
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
        case .halloween:
            return "Halloween"
        case .easter:
            return "Easter"
        case .getWellSoon:
            return "Get Well Soon"
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
    case halloween
    case easter
    case getWellSoon
}

enum GreetingPageCategory: String {
    case homePage
    case greetingPage
}
