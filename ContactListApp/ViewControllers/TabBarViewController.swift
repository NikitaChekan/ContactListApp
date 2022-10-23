//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Nikita Chekan on 22.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()

    }

    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let contacts = Person.getContactList()
        contactListVC.contactsList = contacts
        sectionVC.contactsList = contacts
    }
    
}
