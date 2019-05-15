//
//  ViewController.swift
//  Advanced Seques
//
//  Created by sneakysneak on 07/02/2019.
//  Copyright © 2019 sneakysneak. All rights reserved.
//

import UIKit

let globalVar = "Rob"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var activeRow = 0
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Row \(indexPath.row)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeRow = indexPath.row
        
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
//inbuilt function prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondViewController" {
            
            let secondViewController = segue.destination as! SecondViewController
            
            secondViewController.activeRow = activeRow
            
        }
    }

}

