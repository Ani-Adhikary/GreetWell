//
//  FavCell.swift
//  GreetWell
//
//  Created by Ani Adhikary on 14/07/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class FavCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var highlightIndicator: UIView!
    //@IBOutlet weak var selectIndicator: UIImageView!
    @IBOutlet weak var favIndicator: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isHighlighted: Bool {
      didSet {
        highlightIndicator.isHidden = !isHighlighted
      }
    }
    
    override var isSelected: Bool {
      didSet {
        highlightIndicator.isHidden = !isSelected
        //selectIndicator.isHidden = !isSelected
      }
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func setupData(greeting: Greeting) {
        imageView.image = UIImage(named: greeting.greetingImage)
    }

}
