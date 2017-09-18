//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Scott Williams on 9/17/17.
//  Copyright © 2017 Scott Williams. All rights reserved.
//

import UIKit
var list = ["Go to the mall", "Ride the ferris wheel", "Eat groceries", "Collect 200 dollars"];


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var todoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //populates the list with the correct amount of rows
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    //ensures we have up to date view upon navigating to this view
    override func viewDidAppear(_ animated: Bool) {
        todoTableView.reloadData();
    }
    
    //fills the row with the necessary data
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "todoTableCell");
        cell.textLabel?.text = list[indexPath.row];
        
        return cell;
    }
    
    //used to remove items by a swipe left
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            list.remove(at: indexPath.row);
            self.todoTableView.reloadData();
        }
    }

}

