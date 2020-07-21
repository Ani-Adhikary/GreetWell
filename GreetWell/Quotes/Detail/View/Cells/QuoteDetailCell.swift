//
//  QuoteDetailCell.swift
//  GreetWell
//
//  Created by Ani Adhikary on 21/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class QuoteDetailCell: UICollectionViewCell {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    var favButtonSelected = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    @IBAction func favButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func shareButtonClicked(_ sender: UIButton) {
        
    }
    
    func setupData(quote: Quote) {
        quoteTextLabel.text = quote.quoteText
        authorLabel.text = quote.author
        
        if let image = quote.backgroundImage {
            bgImageView.image = UIImage(named: image)?.alpha(0.4)
        } else {
            bgImageView.image = UIImage(named: "Birthday1")?.alpha(0.4)
        }
        
        if !quote.favourite {
            favButtonSelected = false
            favButton.setImage(#imageLiteral(resourceName: "Activity"), for: .normal)
        } else {
            favButtonSelected = true
            favButton.setImage(#imageLiteral(resourceName: "Activity_Selected"), for: .normal)
        }
    }

}
