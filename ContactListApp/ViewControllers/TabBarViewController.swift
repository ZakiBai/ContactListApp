//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Zaki on 22.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    
    }
    
    private func transferData() {
        let persons = Person.gerContacts()
        
        guard let viewControllers else { return }

        viewControllers.forEach {
            if let firstVC = $0 as? FirstContactListTableViewController {
                firstVC.persons = persons
            } else if let secondVC = $0 as? SecondContactListTableViewController {
                secondVC.persons = persons
            }
        }
    }

}
