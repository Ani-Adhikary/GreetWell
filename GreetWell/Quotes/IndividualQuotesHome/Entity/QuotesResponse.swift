//
//  QuotesResponse.swift
//  GreetWell
//
//  Created by Ani Adhikary on 17/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import Foundation

class QuotesResponse {
    
    static func getQuotes(quoteType: QuoteType) -> [Quote] {
        
        print("Quote type------- \(quoteType.rawValue)")
        
        var quotes = [Quote]()
        
        let fathersDayQuotes = QuotesResponse.getFathersDayQuotes()
        let mothersDayQuotes = QuotesResponse.getMothersDayQuotes()
        let womensDayQuotes = QuotesResponse.getWomensDayQuotes()
        let valentinesDayQuotes = QuotesResponse.getValentinesDayQuotes()
        let birthdayDayQuotes = QuotesResponse.getBirthdayDayQuotes()
        
        quotes += fathersDayQuotes
        quotes += mothersDayQuotes
        quotes += womensDayQuotes
        quotes += valentinesDayQuotes
        quotes += birthdayDayQuotes
        
        var filteredQuotes = [Quote]()
        
        filteredQuotes = quotes.filter {
            $0.quoteType == quoteType
        }
        
        return filteredQuotes.shuffled()
        
        //return quotes.shuffled()
        
    }
    
    static func getFathersDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: FathersDayQuoteConstants.fdayQuote1ID, quoteText: FathersDayQuoteConstants.fdayQuote1Text, author: FathersDayQuoteConstants.fdayQuote1Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote2ID, quoteText: FathersDayQuoteConstants.fdayQuote2Text, author: FathersDayQuoteConstants.fdayQuote2Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote3ID, quoteText: FathersDayQuoteConstants.fdayQuote3Text, author: FathersDayQuoteConstants.fdayQuote3Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote4ID, quoteText: FathersDayQuoteConstants.fdayQuote4Text, author: FathersDayQuoteConstants.fdayQuote4Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote5ID, quoteText: FathersDayQuoteConstants.fdayQuote5Text, author: FathersDayQuoteConstants.fdayQuote5Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote6ID, quoteText: FathersDayQuoteConstants.fdayQuote6Text, author: FathersDayQuoteConstants.fdayQuote6Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false),
            Quote(id: FathersDayQuoteConstants.fdayQuote7ID, quoteText: FathersDayQuoteConstants.fdayQuote7Text, author: FathersDayQuoteConstants.fdayQuote7Author, quoteType: QuoteType.fathersDay, backgroundImage: GreetingsHomeConstants.greetingHome6Image, favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getMothersDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: MothersDayQuoteConstants.mdayQuote1ID, quoteText: MothersDayQuoteConstants.mdayQuote1Text, author: MothersDayQuoteConstants.mdayQuote1Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting4Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote2ID, quoteText: MothersDayQuoteConstants.mdayQuote2Text, author: MothersDayQuoteConstants.mdayQuote2Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting3Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote3ID, quoteText: MothersDayQuoteConstants.mdayQuote3Text, author: MothersDayQuoteConstants.mdayQuote3Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting3Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote4ID, quoteText: MothersDayQuoteConstants.mdayQuote4Text, author: MothersDayQuoteConstants.mdayQuote4Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting3Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote5ID, quoteText: MothersDayQuoteConstants.mdayQuote5Text, author: MothersDayQuoteConstants.mdayQuote5Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting5Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote6ID, quoteText: MothersDayQuoteConstants.mdayQuote6Text, author: MothersDayQuoteConstants.mdayQuote6Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting4Image, favourite: false),
            Quote(id: MothersDayQuoteConstants.mdayQuote7ID, quoteText: MothersDayQuoteConstants.mdayQuote7Text, author: MothersDayQuoteConstants.mdayQuote7Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting3Image, favourite: false),
             Quote(id: MothersDayQuoteConstants.mdayQuote8ID, quoteText: MothersDayQuoteConstants.mdayQuote8Text, author: MothersDayQuoteConstants.mdayQuote8Author, quoteType: QuoteType.mothersDay, backgroundImage: MothersDayGreetingConstants.mdayGreeting5Image, favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getBirthdayDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: 1, quoteText: "Happy Birthday", author: "", quoteType: QuoteType.birthday, backgroundImage: GreetingsHomeConstants.greetingHome1Image, favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getWomensDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: WomensDayQuoteConstants.wdayQuote1ID, quoteText: WomensDayQuoteConstants.wdayQuote1Text, author: "", quoteType: QuoteType.womensDay, backgroundImage: GreetingsHomeConstants.greetingHome3Image, favourite: false),
            Quote(id: WomensDayQuoteConstants.wdayQuote2ID, quoteText: WomensDayQuoteConstants.wdayQuote2Text, author: "", quoteType: QuoteType.womensDay, backgroundImage: GreetingsHomeConstants.greetingHome3Image, favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getValentinesDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: ValentinesDayQuoteConstants.vdayQuote1ID, quoteText: ValentinesDayQuoteConstants.vdayQuote1Text, author: "", quoteType: QuoteType.valentinesDay, backgroundImage: GreetingsHomeConstants.greetingHome2Image, favourite: false),
            Quote(id: ValentinesDayQuoteConstants.vdayQuote2ID, quoteText: ValentinesDayQuoteConstants.vdayQuote2Text, author: "", quoteType: QuoteType.valentinesDay, backgroundImage: GreetingsHomeConstants.greetingHome2Image, favourite: false),
            Quote(id: ValentinesDayQuoteConstants.vdayQuote3ID, quoteText: ValentinesDayQuoteConstants.vdayQuote3Text, author: "", quoteType: QuoteType.valentinesDay, backgroundImage: GreetingsHomeConstants.greetingHome2Image, favourite: false),
            Quote(id: ValentinesDayQuoteConstants.vdayQuote4ID, quoteText: ValentinesDayQuoteConstants.vdayQuote4Text, author: "", quoteType: QuoteType.valentinesDay, backgroundImage: GreetingsHomeConstants.greetingHome2Image, favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getIndividualQuotesPageTitle(quoteType: QuoteType) -> String {
        switch quoteType {
        case .birthday:
            return "Birthday Quotes"
        case .valentinesDay:
            return "Valentines Day Quotes"
        case .womensDay:
            return "Women's Day Quotes"
        case .mothersDay:
            return "Mother's Day Quotes"
        case .fathersDay:
            return "Father's Day Quotes"
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
            return "Happy New Year Quotes"
        default:
            return "Your Quotes"
        }
    }
}


class Quote {
    var id: Int
    var quoteText: String
    var author: String
    var quoteType: QuoteType
    var backgroundImage: String?
    var favourite: Bool
    
    init() {
        self.id = 0
        self.quoteText = ""
        self.quoteType = QuoteType.birthday
        self.author = ""
        self.backgroundImage = ""
        self.favourite = false
    }
    
    init(id: Int, quoteText: String, author: String, quoteType: QuoteType, backgroundImage: String?, favourite: Bool) {
        self.id = id
        self.quoteText = quoteText
        self.quoteType = quoteType
        self.author = author
        self.backgroundImage = backgroundImage
        self.favourite = favourite
    }
}

extension Quote: Equatable {
    static func ==(lhs: Quote, rhs: Quote) -> Bool {
        return lhs.id == rhs.id
    }
}
