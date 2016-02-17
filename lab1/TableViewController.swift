//
//  TableViewController.swift
//  lab1
//
//  Created by Admin on 10.02.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let people:[Human] = [Human(name: "Dvorko Andrey", number: "+375336390376"),
        Human(name: "Ivanov Andrey", number: "+375291234567"),
        Human(name: "Lukin Aleksey", number: "+375337654321")]

    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tabCell") as! TableViewCell!
        cell.humanName.text = people[indexPath.row].getName()
        cell.humanNumber.text = people[indexPath.row].getNumber()
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
