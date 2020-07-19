//
//  QuoteCell.swift
//  GreetWell
//
//  Created by Ani Adhikary on 19/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
    
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
        
    func setupData(quote: Quote) {
        quoteTextLabel.text = quote.quoteText
        authorLabel.text = quote.author
    }
    
}
