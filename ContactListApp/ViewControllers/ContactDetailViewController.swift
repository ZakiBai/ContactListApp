//
//  ViewController.swift
//  ContactListApp
//
//  Created by Zaki on 21.04.2023.
//

import UIKit

class ContactDetailViewController: UIViewController {

    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        mailLabel.text = "Mail: \(person.email)"
        
        // Do any additional setup after loading the view.
    }


}

