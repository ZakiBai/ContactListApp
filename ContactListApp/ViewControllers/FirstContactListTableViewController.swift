//
//  FirstContactListTableViewController.swift
//  ContactListApp
//
//  Created by Zaki on 22.04.2023.
//

import UIKit

final class FirstContactListTableViewController: UITableViewController {

    
    
    var persons: [Person]!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? ContactDetailViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
        
    }

}
