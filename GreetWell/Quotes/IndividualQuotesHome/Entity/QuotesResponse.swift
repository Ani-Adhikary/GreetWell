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
        
        quotes += fathersDayQuotes
        quotes += mothersDayQuotes
        
        var filteredQuotes = [Quote]()
        
        filteredQuotes = quotes.filter {
            $0.quoteType == quoteType
        }
        
        //return filteredQuotes.shuffled()
        
        return quotes.shuffled()
        
    }
    
    static func getFathersDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: 1, quoteText: "Happy Fathers Day", author: "", quoteType: QuoteType.fathersDay, backgroundImage: "", favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getMothersDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: 1, quoteText: "Happy Mothers Day", author: "", quoteType: QuoteType.fathersDay, backgroundImage: "", favourite: false)
        ]
        
        return quotes
        
    }
    
    static func getBirthdayDayQuotes() -> [Quote] {
        
        let quotes = [
            Quote(id: 1, quoteText: "", author: "", quoteType: QuoteType.fathersDay, backgroundImage: "", favourite: false)
        ]
        
        return quotes
        
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
