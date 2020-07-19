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
            QuoteList(listID: 1, listText: "Birthday", listType: .birthday),
            QuoteList(listID: 2, listText: "Women's Day", listType: .womensDay),
            QuoteList(listID: 3, listText: "Mother's Day", listType: .mothersDay),
            QuoteList(listID: 4, listText: "Father's Day", listType: .fathersDay),
            QuoteList(listID: 5, listText: "Christmas", listType: .christmas),
            QuoteList(listID: 6, listText: "New Year", listType: .newYear)
        ]
        return list
    }
}

struct QuoteList {
    var listID: Int
    var listText: String
    var listType: QuoteType
    
    init() {
        listID = 0
        listText = ""
        listType = QuoteType.birthday
    }
    
    init(listID: Int, listText: String, listType: QuoteType) {
        self.listID = listID
        self.listText = listText
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
