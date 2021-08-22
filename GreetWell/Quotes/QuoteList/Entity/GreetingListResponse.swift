//
//  QuotesListResponse.swift
//  GreetWell
//
//  Created by Ani Adhikary on 17/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import Foundation

class GreetingListResponse {
    
    static func getList() -> [QuoteList] {
        let list = [
            QuoteList(listID: 1, listText: "Birthday", listImage: BirthdayGreetingConstants.bdayGreeting6Image, listType: .birthday),
            QuoteList(listID: 2, listText: "Women's Day", listImage: WomensDayGreetingConstants.wdayGreeting9Image, listType: .womensDay),
            QuoteList(listID: 3, listText: "Mother's Day", listImage: MothersDayGreetingConstants.mdayGreeting10Image, listType: .mothersDay),
            QuoteList(listID: 4, listText: "Father's Day", listImage: FathersDayGreetingConstants.fdayGreeting1Image, listType: .fathersDay),
            QuoteList(listID: 5, listText: "Christmas", listImage: ChristmasGreetingConstants.christmasGreeting6Image, listType: .christmas),
            QuoteList(listID: 6, listText: "New Year", listImage: NewYearConstants.newYearGreeting5Image, listType: .newYear),
            QuoteList(listID: 7, listText: "Valentines Day", listImage: ValentinesDayGreetingConstants.vdayGreeting14Image, listType: .valentinesDay)
        ]
        return list
    }
}

struct QuoteList {
    var listID: Int
    var listText: String
    var listImage: String
    var listType: QuoteType
    
    init() {
        listID = 0
        listText = ""
        listImage = ""
        listType = QuoteType.birthday
    }
    
    init(listID: Int, listText: String, listImage: String, listType: QuoteType) {
        self.listID = listID
        self.listText = listText
        self.listImage = listImage
        self.listType = listType
    }
}

enum QuoteType: String {
    case birthday
    case valentinesDay
    case womensDay
    case mothersDay
    case fathersDay
    case corona
    case usaIndependenceDay
    case janmashtami
    case ganeshChaturthi
    case thanksgiving
    case christmas
    case newYear
}
