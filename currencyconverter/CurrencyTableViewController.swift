//
//  CurrencyTableViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CurrencyTableViewController: UITableViewController
{
    
      
    
     var val:String = "USD"
    let Currencynames = ["USD" , "INR" , "AUD" , "CAD"]
    let image = [#imageLiteral(resourceName: "images") , #imageLiteral(resourceName: "1200px-Flag_of_India.svg.png") , #imageLiteral(resourceName: "index") , #imageLiteral(resourceName: "51YCk1KrXWL._SL1414_")]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
      override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

//     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return Currencynames.count
        }
    
       
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell
        
        {
        let cell = tableView.dequeueReusableCell(
        withIdentifier: "CurrencyList",for: indexPath)
        
            cell.textLabel?.text = Currencynames[indexPath.row]
            cell.imageView?.image = image[indexPath.row]
            return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        self.val = Currencynames[indexPath.row]

    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
//    @IBAction func press(_ sender: Any) {
//         //_ = navigationController?.popToRootViewController(animated: true)
//    }
    
    
    //2nd view controller to vapis aa gya
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.destination is ViewController
     {
        
        
        let vc = segue.destination as? ViewController
        if(vc!.check)
        {
            vc?.value = self.val
        }
        else
        {
            
            vc?.value1 = self.val
        }
        }
   }
}

