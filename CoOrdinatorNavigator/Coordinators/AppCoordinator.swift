//
//  AppCoordinator.swift
//  CoOrdinatorNavigator
//
//  Created by Thulani Mtetwa on 2023/08/24.
//

import Foundation
import UIKit

class AppCoordinator {
    
    //MARK: Properties
    private let navigationController = UINavigationController()
    
    var rootViewController: UIViewController {
        return navigationController
    }
    
    func start() {
        showInitialScreen()
    }
    
    //MARK: Helpers
    
    private func showInitialScreen() {
        let initialViewController = InitialViewController.instantiate()
        
        initialViewController.didPushWithDetail = { [weak self] (detail) in
            self?.showSecondView(detail)
        }
        
        initialViewController.didPresentView = { [weak self] in
            self?.showThirdView()
        }
        
        navigationController.pushViewController(initialViewController, animated: true)
    }
    
    //MARK: Navigation helpers
    private func showSecondView(_ detail: String) {
        let secondView = SecondViewController.instantiate()
        
        secondView.detailFromString = detail
        
        navigationController.pushViewController(secondView, animated: true)
    }
    
    private func showThirdView() {
        let thirdView =  ThirdViewController.instantiate()
        
        thirdView.dismissView = { [weak self] in
            self?.navigationController.dismiss(animated: true)
        }
        navigationController.present(thirdView, animated: true)
    }
}
