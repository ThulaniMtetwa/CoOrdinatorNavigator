//
//  ThirdViewController.swift
//  CoOrdinatorNavigator
//
//  Created by Thulani Mtetwa on 2023/08/28.
//

import UIKit

class ThirdViewController: UIViewController {

    var dismissView: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeView() {
        dismissView?()
    }
}

extension ThirdViewController: Storyboardable {}
