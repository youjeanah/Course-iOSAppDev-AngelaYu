//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "a@b.com", body: "hhhhhhhhhhhhhhhhhhhhhhhhhhhahhhaaaaahahaahahhhhhhhaaaaaahahaaaaahhh"),
        Message(sender: "1@2.com", body: "hi"),
        Message(sender: "a@b.com", body: "Wassup"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // when the tableview loads up, it's going to request for the data
        tableView.dataSource = self
        
        title = K.appName
        
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)

    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    // this method is going to be called for (messages.count) times
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell

        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
}
 
