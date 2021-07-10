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
        let durgaPujaGreetings = getDurgaPujaGreetings()
        let ganeshChaturthiGreetings = getGaneshChaturthiGreetings()
        let thanksgivingGreetings = getThanksgivingGreetings()
        let getWellSoonGreetings = getGetWellSoonGreetings()        
        let usaIndependenceDayGreetings = getUSAIndependenceDayGreetings()
        let dussehraGreetings = getDussehraGreetings()
        
        var greetings = [Greeting]()
        
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
        greetings += durgaPujaGreetings
        greetings += ganeshChaturthiGreetings
        greetings += thanksgivingGreetings
        greetings += getWellSoonGreetings
        greetings += dussehraGreetings
        greetings += usaIndependenceDayGreetings
        greetings += getNewYearGreetings()
        
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
    
    // MARK: Days Greetings
    static func getBirthDayGreetings() -> [Greeting] {
        
        let greetings = [
            Greeting(id: BirthdayGreetingConstants.bdayGreeting1ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting1Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: BirthdayGreetingConstants.bdayGreeting2ID, greeting: BirthdayGreetingConstants.bdayGreetingText, image: BirthdayGreetingConstants.bdayGreeting2Image, additionalInfo: BirthdayGreetingConstants.bdayGreetingAccLabel, greetingType: .birthday, greetingPageCategory: .homePage, favourite: false),
            
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
            
    // MARK: World Greetings
    static func getThanksgivingGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting1ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting1Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting2ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting2Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting3ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting3Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting4ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting4Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting5ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting5Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting6ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting6Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting7ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting7Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting8ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting8Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting9ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting9Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting10ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting10Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting11ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting11Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting12ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting12Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting13ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting13Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting14ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting14Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting15ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting15Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting16ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting16Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ThanksgivingGreetingConstants.thanksgivingGreeting33ID, greeting: ThanksgivingGreetingConstants.thanksgivingGreetingText, image: ThanksgivingGreetingConstants.thanksgivingGreeting33Image, additionalInfo: ThanksgivingGreetingConstants.thanksgivingGreetingAccLabel, greetingType: .thanksgiving, greetingPageCategory: .greetingPage, favourite: false)
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
            Greeting(id: EidGreetingConstants.eidGreeting31ID, greeting: EidGreetingConstants.eidGreetingText, image: EidGreetingConstants.eidGreeting31Image, additionalInfo: EidGreetingConstants.eidGreetingAccLabel, greetingType: .eid, greetingPageCategory: .homePage, favourite: false)
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
            Greeting(id: ChristmasGreetingConstants.christmasGreeting16ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting16Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: ChristmasGreetingConstants.christmasGreeting28ID, greeting: ChristmasGreetingConstants.christmasGreetingText, image: ChristmasGreetingConstants.christmasGreeting28Image, additionalInfo: ChristmasGreetingConstants.christmasGreetingAccLabel, greetingType: .christmas, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getUSAIndependenceDayGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting1ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting1Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting2ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting2Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting3ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting3Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting4ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting4Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting5ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting5Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting6ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting6Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting7ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting7Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting8ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting8Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting9ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting9Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting10ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting10Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting11ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting11Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting12ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting12Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting13ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting13Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting14ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting14Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting15ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting15Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting16ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting16Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: USAIndeDayGreetingConstants.usaIndeDayGreeting17ID, greeting: USAIndeDayGreetingConstants.usaIndeDayGreetingText, image: USAIndeDayGreetingConstants.usaIndeDayGreeting17Image, additionalInfo: USAIndeDayGreetingConstants.usaIndeDayGreetingAccLabel, greetingType: .usaIndependenceDay, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getNewYearGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: NewYearConstants.newYearGreeting1ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting1Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting2ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting2Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting3ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting3Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting4ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting4Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting5ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting5Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting6ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting6Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting7ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting7Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting8ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting8Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting9ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting9Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .homePage, favourite: false),
            
            Greeting(id: NewYearConstants.newYearGreeting10ID, greeting: NewYearConstants.newYearGreetingText, image: NewYearConstants.newYearGreeting10Image, additionalInfo: NewYearConstants.newYearAccLabel, greetingType: .newYear, greetingPageCategory: .greetingPage, favourite: false)
        ]
        return greetings
    }
    
    // MARK: Indian Festival Greetings
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
    
    static func getDurgaPujaGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting1ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting1Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting2ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting2Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting3ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting3Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting4ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting4Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting5ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting5Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting6ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting6Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting7ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting7Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting8ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting8Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting9ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting9Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting10ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting10Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting11ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting11Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting12ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting12Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting13ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting13Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting14ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting14Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting15ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting15Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting16ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting16Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DurgaPujaGreetingConstants.durgaPujaGreeting24ID, greeting: DurgaPujaGreetingConstants.durgaPujaGreetingText, image: DurgaPujaGreetingConstants.durgaPujaGreeting24Image, additionalInfo: DurgaPujaGreetingConstants.durgaPujaGreetingAccLabel, greetingType: .durgaPuja, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getGaneshChaturthiGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting1ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting1Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting2ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting2Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting3ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting3Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting4ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting4Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting5ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting5Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting6ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting6Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting7ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting7Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting8ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting8Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting9ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting9Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting10ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting10Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting11ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting11Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting12ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting12Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting13ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting13Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting14ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting14Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting15ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting15Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting16ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting16Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting28ID, greeting: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingText, image: GaneshChaturthiGreetingConstants.ganeshChaturthiGreeting28Image, additionalInfo: GaneshChaturthiGreetingConstants.ganeshChaturthiGreetingAccLabel, greetingType: .ganeshChaturthi, greetingPageCategory: .homePage, favourite: false)
        ]
        return greetings
    }
    
    static func getDussehraGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: DusseraGreetingConstants.dusseraGreeting1ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting1Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting2ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting2Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting3ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting3Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting4ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting4Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting5ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting5Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting6ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting6Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting7ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting7Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting8ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting8Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting9ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting9Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting10ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting10Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting11ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting11Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting12ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting12Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting13ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting13Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting14ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting14Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting15ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting15Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting16ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting16Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: DusseraGreetingConstants.dusseraGreeting17ID, greeting: DusseraGreetingConstants.dusseraGreetingText, image: DusseraGreetingConstants.dusseraGreeting17Image, additionalInfo: DusseraGreetingConstants.dusseraGreetingAccLabel, greetingType: .dussehra, greetingPageCategory: .greetingPage, favourite: false),
            
        ]
        return greetings
    }
                 
    // MARK: Other Greetings
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
    
    static func getGetWellSoonGreetings() -> [Greeting] {
        let greetings = [
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting1ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting1Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting2ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting2Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting3ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting3Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .homePage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting4ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting4Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting5ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting5Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting6ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting6Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting7ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting7Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting8ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting8Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting9ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting9Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting10ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting10Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting11ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting11Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting12ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting12Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting13ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting13Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting14ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting14Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting15ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting15Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false),
            Greeting(id: GetWellSoonGreetingConstants.getWellSoonGreeting16ID, greeting: GetWellSoonGreetingConstants.getWellSoonGreetingText, image: GetWellSoonGreetingConstants.getWellSoonGreeting16Image, additionalInfo: GetWellSoonGreetingConstants.getWellSoonGreetingAccLabel, greetingType: .getWellSoon, greetingPageCategory: .greetingPage, favourite: false)
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
            return "Thanksgiving"
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
        case .durgaPuja:
            return "Durga Puja"
        case .dussehra:
            return "Dussehra"
        default:
            return "Not found"
        }
    }
    
    static func getIndividualGreetingsDate(greetType: GreetingType) -> String? {
        switch greetType {
        case .birthday:
            return nil
        case .valentinesDay:
            return "Valentines Day is celebrated on 14th February"
        case .womansDay:
            return "Women's Day is celebrated on 8th March"
        case .mothersDay:
            return "Mother's Day is celebrated on 9th May."
        case .eid:
            return nil
        case .fathersDay:
            return "Father's Day is celebrated on 20th June"
        case .corona:
            return nil
        case .usaIndependenceDay:
            return "USA Independence Day is celebrated on 4th July"
        case .janmashtami:
            return nil
        case .ganeshChaturthi:
            return nil
        case .thanksgiving:
            return "Thanksgiving is celebrated on 25 November"
        case .christmas:
            return "Christmas is celebrated on 25th December"
        case .newYear:
            return "New Year is celebrated on 1st January"
        case .diwali:
            return "Diwali is on 4th November"
        case .halloween:
            return "Halloween is celebrated on 31st October"
        case .easter:
            return "Easter is on 4th April"
        case .getWellSoon:
            return nil
        case .durgaPuja:
            return nil
        case .dussehra:
            return nil
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
    case fathersDay
    case usaIndependenceDay
    case thanksgiving
    case christmas
    case newYear
    case halloween
    case easter
    case janmashtami
    case ganeshChaturthi
    case diwali
    case durgaPuja
    case dussehra
    case getWellSoon
    case corona
    case eid
}

enum GreetingPageCategory: String {
    case homePage
    case greetingPage
}
