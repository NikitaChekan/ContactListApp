//
//  ViewController.swift
//  ContactListApp
//
//  Created by Nikita Chekan on 18.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    private let contactsList = Person.getContactList()
    
    // MARK: - TableView DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.contact = contactsList[indexPath.row]
    }

}

