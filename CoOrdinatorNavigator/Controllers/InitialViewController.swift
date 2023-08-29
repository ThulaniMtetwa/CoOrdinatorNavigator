//
//  ViewController.swift
//  CoOrdinatorNavigator
//
//  Created by Thulani Mtetwa on 2023/08/24.
//

import UIKit

class InitialViewController: UIViewController {

    var didPushWithDetail: ((String) -> Void)?
    var didPresentView: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Initial View"
    }
    
    @IBAction func pushToNextView() {
        didPushWithDetail?("Detail from Initial view controller.")
    }
    
    @IBAction func presentView() {
        didPresentView?()
    }
}

extension InitialViewController: Storyboardable {}

