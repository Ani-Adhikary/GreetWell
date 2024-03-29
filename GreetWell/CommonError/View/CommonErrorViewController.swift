//
//  CommonErrorViewController.swift
//  Sarvopari
//
//  Created by Ani Adhikary on 25/06/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class CommonErrorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.topViewController?.title = "Your Favourites"
        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = false
    }
    
}
