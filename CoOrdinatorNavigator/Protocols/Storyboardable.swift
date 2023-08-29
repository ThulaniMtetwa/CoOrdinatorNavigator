//
//  Storyboardable.swift
//  CoOrdinatorNavigator
//
//  Created by Thulani Mtetwa on 2023/08/25.
//

import Foundation
import UIKit

protocol Storyboardable {
    //MARK: Properties
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
    static var storyboardIdentifier: String { get }
    
    //MARK: Public Api's
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    
    //MARK: Properties
    static var storyboardName: String {
        return "Main"
    }
    static var storyboardBundle: Bundle {
        .main
    }
    static var storyboardIdentifier: String {
        String(describing: self)
    }
    
    //MARK: Public Api's
    static func instantiate() -> Self {
        guard let viewController = UIStoryboard(name: storyboardName, bundle: storyboardBundle).instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError("Unable to Instantiate View Controller with the Storyboard Identifier: \(storyboardIdentifier)")
        }
        
        return viewController
    }
}
