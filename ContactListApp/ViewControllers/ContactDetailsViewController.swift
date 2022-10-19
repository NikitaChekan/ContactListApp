//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by jopootrivatel on 18.10.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    var contact: Person!
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = contact.fullname
        emailLabel.text = contact.email
        phoneLabel.text = contact.phone
    }

}
