//
//  ViewController.swift
//  TableViewExemplo
//
//  Created by Afonso Sales on 9/9/14.
//  Copyright (c) 2014 Afonso Sales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
                            
    var frutas = ["Abacate", "Abacaxi", "Acerola", "Ameixa", "Banana", "Caju", "Carambola", "Damasco", "Figo", "Goiaba", "Graviola", "Jaca", "Laranja", "Limão", "Maçã", "Manga", "Maracujá", "Melancia", "Melão", "Nectarina", "Pêssego", "Pitanga", "Romã", "Tangerina", "Uva"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CustomTableViewCell
        
        //cell.lblDesc.text = "Texto da linha "
        cell.lblDesc.text = frutas[indexPath.row]
        
        cell.lblNum.text = String(indexPath.row + 1)
        
        return cell
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return frutas.count
    }



}

