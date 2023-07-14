//
//  ViewController.swift
//  TableView using XIB File
//
//  Created by Nikhil Saini on 25/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableCell
        cell.myLabel.text = Animals[indexPath.row]
        return cell
        
    }
    
    
    
    @IBOutlet weak var myTable: UITableView!
    
    var Animals : [String] = ["Lion", "Tiger", "Cat", "Leopard", "Dog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTable.register(UINib(nibName: "myTableCell", bundle: nil), forCellReuseIdentifier: "cell")
    }


}

