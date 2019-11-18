//
//  Rate.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
import UIKit
class rateChange : UIViewController {
    var dvalue = ""

     @IBOutlet weak var changeResult: UITextField!
    
    @IBAction func lastButton(_ sender: Any)
    {
        
    if(changeResult.text == ""){
            
            let alert = UIAlertController(title: "Field is empty",message: "Please enter amount",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title:"Ok",style: UIAlertAction.Style.default,handler: nil))
            self.present(alert,animated: true,completion: nil)
            
            return
        }else{
        
        dvalue = changeResult.text!
        print(dvalue)
        let a = self.navigationController!.viewControllers[0] as! ViewController
        a.resetdefault = dvalue
        self.navigationController!.popToRootViewController(animated: true)
        }
    }
    var itemToEdit: String?
    override func viewDidLoad() {

        super.viewDidLoad()
        if let itemToEdit = itemToEdit {
            title = "Edit Item"
            changeResult.text = itemToEdit
            
        }
         
}
    
}
