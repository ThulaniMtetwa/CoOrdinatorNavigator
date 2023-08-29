//
//  SecondViewController.swift
//  CoOrdinatorNavigator
//
//  Created by Thulani Mtetwa on 2023/08/28.
//

import UIKit

class SecondViewController: UIViewController {

    var detailFromString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = detailFromString
    }

}

extension SecondViewController: Storyboardable {}
