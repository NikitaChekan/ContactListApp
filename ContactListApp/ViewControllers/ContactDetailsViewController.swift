//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Nikita Chekan on 18.10.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    var contact: Person!
    
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullname
        emailLabel.text = "Email: \(contact.email)"
        phoneLabel.text = "Phone: \(contact.phone)"
    }

}
