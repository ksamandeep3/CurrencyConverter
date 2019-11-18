//
//  ViewController.swift
//  currencyconverter
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate

{
     
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    

    @IBOutlet weak var changeLabel1: UILabel!
    @IBOutlet weak var changeLabel2: UILabel!
    
    @IBOutlet weak var inputAmount: UITextField!
    @IBOutlet weak var finalResult: UITextField!
    
    @IBOutlet weak var `default`: UILabel!
    @IBOutlet weak var defaultRate: UITextField!
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var Image2: UIImageView!
     var resetdefault = ""
    
     var check = true
     var value:String! = "CAD"
     var value1:String! = "INR"
    
    let usdinr = 71.88
    
    let usdcad = 1.32
    let usdaud = 1.47
    
    let inrcad = 0.018
    let inraud = 0.020
    
    let cadaud = 1.11
    var amt:Double! = 0.0
    
    @IBAction func convertButton(_ sender: Any)
    {
        
        if inputAmount.text == ""
        {
        showAlert()
            return
        }
       if resetdefault == ""
       {
        
       }else
       {
        resetValue()
        return
        }
     
        var amt:Double! = Double(inputAmount.text!)
                  
                  
                  
                  switch changeLabel1.text{
                      
                      case "USD":
                          
                          switch changeLabel2.text{
                              case "USD":
                                  amt = amt * 1
                                  defaultRate.text = String(1)
                                  break
                              
                              case "INR":
                                  amt = amt * usdinr
                                  defaultRate.text = String(usdinr)
                                  break
                              
                              case "CAD":
                                  amt = amt * usdcad
                                   defaultRate.text = String(usdcad)
                                  break
                              
                              case "AUD":
                                  amt = amt * usdaud
                                  defaultRate.text = String(usdaud)
                                  break
                              
                              default:
                                  break
                          }
                          
                          break
                      
                      case "INR":
                          
                          switch changeLabel2.text{
                              case "USD":
                                  amt = amt * 1/usdinr
                                  defaultRate.text = String(1/usdinr)
                                  break
                              
                              case "INR":
                                  amt = amt * 1
                                  defaultRate.text = String(1)
                                  break
                              
                              case "CAD":
                                  amt = amt * inrcad
                                  defaultRate.text = String(inrcad)
                                  break
                              
                              case "AUD":
                                  amt = amt * inraud
                                   defaultRate.text = String(inraud)
                                  break
                              
                              default:
                                  break
                          }
                          
                          break
                      
                      case "CAD":
                          
                          switch changeLabel2.text{
                              case "USD":
                                  amt = amt * 1/usdcad
                                defaultRate.text = String(1/usdcad)
                            break
                              
                              case "INR":
                                  amt = amt * 1/inrcad
                                    defaultRate.text = String(format: "%.3f", inrcad)
                                  break
                              
                              case "CAD":
                                  amt = amt * 1
                                       defaultRate.text = String(1)
                                  break
                              
                              case "AUD":
                                  amt = amt * cadaud
                                    defaultRate.text = String(1/cadaud)
                                  break
                              
                              default:
                                  break
                          }
                          
                          break
                      
                      case "AUD":
                          
                          switch changeLabel2.text{
                              case "USD":
                                  amt = amt * 1/usdaud
                                   defaultRate.text = String(1/usdaud)
                                  break
                              
                              case "INR":
                                  amt = amt * 1/inraud
                                   defaultRate.text = String(1/inraud)
                                  break
                              
                              case "CAD":
                                  amt = amt * 1/cadaud
                                   defaultRate.text = String(1/cadaud)
                                  break
                              
                              case "AUD":
                                  amt = amt * 1
                                   defaultRate.text = String(1)
                                  break
                              
                              default:
                                  break
                          }
                          
                          break
                      
                      default:
                          break
                  }
                  
                  finalResult.text = String(amt)
        let  abc = String(format: "%.2f", amt)
        
    }
    
    @IBAction func showAlert()
    {
    let alert = UIAlertController(title: "OOPS...",message: "Please enter the amount", preferredStyle: .alert)
    let imageView = UIImageView(frame: CGRect(x: 180, y: 12, width: 30, height: 30))
        
    imageView.image = #imageLiteral(resourceName: "sad-smily-140092-7439803")
    alert.view.addSubview(imageView)
    let action = UIAlertAction(title: "Try Again", style: .default,handler: nil)
    
        alert.addAction(action)
    present(alert, animated: true, completion: nil)
        
    }
      
@IBAction func done(_ sender: UIStoryboardSegue)
    {
         guard let vc = sender.source as? CurrencyTableViewController
            else
         {return}
                  if(check)
                  {
                      changeLabel1.text = vc.val
                      
                      switch changeLabel1.text
                      {
                      
                          case "USD" :
                              Image1.image = #imageLiteral(resourceName: "images")
                          break
                      
                          case "INR" :
                              Image1.image = #imageLiteral(resourceName: "1200px-Flag_of_India.svg.png")
                          break
                          
                          case "AUD" :
                              Image1.image = #imageLiteral(resourceName: "index")
                          break
                          
                          case "CAD" :
                              Image1.image = #imageLiteral(resourceName: "51YCk1KrXWL._SL1414_")
                          break
                      
                      default:
                      break
                      }
                      
                  }
                  else
                  {
                      changeLabel2.text = vc.val
                      
                      switch changeLabel2.text
                      {
                      
                          case "USD" :
                              Image2.image = #imageLiteral(resourceName: "images")
                          break
                      
                          case "INR" :
                              Image2.image = #imageLiteral(resourceName: "1200px-Flag_of_India.svg")
                          break
                          
                          case "AUD" :
                              Image2.image = #imageLiteral(resourceName: "index")
                          break
                          
                          case "CAD" :
                              Image2.image = #imageLiteral(resourceName: "51YCk1KrXWL._SL1414_")
                          break
                      
                      default:
                      break
                      }
        }
        
    }
    
    
    func defValue()
    {
       switch changeLabel1.text
       {

        case "USD":
                switch changeLabel2.text
                {
                case "USD":
                    amt = amt * 1
                    defaultRate.text = String(1)
                    
                    break

                case "INR":
                    amt = amt * usdinr
                    defaultRate.text = String(format: "%.2f", usdinr)
                    break

               case "CAD":
                   amt = amt * usdcad
                   defaultRate.text = String(usdcad)
                    break

              case "AUD":
                  amt = amt * usdaud
                  defaultRate.text = String(usdaud)
                  break
                   default:
                    break

             }
        break

             case "INR":
                switch changeLabel2.text
                {
            case "USD":
                amt = amt * 1/usdinr
                defaultRate.text = String(1/usdinr)
                    break

            case "INR":
                amt = amt * 1
                defaultRate.text = String(1)
                    break

            case "CAD":
                amt = amt * inrcad
                defaultRate.text = String(inrcad)
                    break

            case "AUD":
                amt = amt * inraud
                defaultRate.text = String(inraud)
                         print("Default")
                    break
              
                default:
                    break

                }

        break

            case "CAD":
                switch changeLabel2.text
                {
                case "USD":
                    amt = amt * 1/usdcad
                    defaultRate.text = String(1/usdcad)
                    break

            case "INR":
                amt = amt * 1/inrcad
                defaultRate.text = String(1/inrcad)
                    break

            case "CAD":
                    amt = amt * 1
                    defaultRate.text = String(1)
                    break

            case "AUD":
                amt = amt * cadaud
                defaultRate.text = String(1/cadaud)
                    break
                default:
                    break

                 }

                 break
          case "AUD":

                 switch changeLabel2.text{
        case "USD":
            amt = amt * 1/usdaud
            defaultRate.text = String(1/usdaud)
                    break

        case "INR":
            amt = amt * 1/inraud
            defaultRate.text = String(1/inraud)
                    break

        case "CAD":
            amt = amt * 1/cadaud
            defaultRate.text = String(1/cadaud)
                    break

        case "AUD":
            amt = amt * 1
            defaultRate.text = String(1)
                    break
                 default:
                    break

        }
        break
       default:
        break

         }
        
        
}
    func resetValue(){

    var amt:Double! = Double(inputAmount.text!)
    switch changeLabel1.text{
    case "USD":
        switch changeLabel2.text{
        case "USD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "INR":
            print(resetdefault)
            amt = amt * Double(resetdefault)!
            //print(amt)
            finalResult.text = String(amt)
            break

        case "CAD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break
            
        case "EUR":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break
            
        default:
            break

        }

        break

    case "INR":
        switch changeLabel2.text{

        case "USD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break
            
        case "INR":

            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "CAD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "EUR":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        default:
            break

        }

        break

    case "CAD":

        switch changeLabel1.text{
        case "USD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "INR":

            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "CAD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "EUR":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        default:
            break

        }

        break

    case "EUR":

        switch changeLabel2.text{
        case "USD":
            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "INR":

            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "CAD":

            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        case "EUR":

            amt = amt * Double(resetdefault)!
            finalResult.text = String(amt)
            break

        default:
            break
        }

        break
    default:
        break

    }
    }

    @IBAction func changeBtn1(_ sender: Any)
   
    {
        
        
        
         defValue()
        check = true
     
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyTableViewController") as? CurrencyTableViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
                print("Button 1")
            }
        }
        
    }
    @IBAction func changeBtn2(_ sender: Any)
    {
               
        defValue()
        check = false
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CurrencyTableViewController") as? CurrencyTableViewController {
            
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
                print("button 2")
            }
        }
        
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDoneButtonOnKeyboard()
        
        inputAmount.delegate = self
        inputAmount.keyboardType = .numberPad
        print("view did load")
        
        // Do any additional setup after loading the view.
    }
   
    
     override func viewWillAppear(_ animated: Bool)
     {
            super.viewWillAppear(animated)
            defValue()
            if resetdefault == ""{
                       
                   
                   }else{
                       defaultRate.text = resetdefault
                   }
            changeLabel1.text = value
            
            changeLabel2.text = value1
            
            switch changeLabel1.text
            {
                
                    case "USD" :
                        Image1.image = #imageLiteral(resourceName: "images")
                    break
                
                    case "INR" :
                        Image1.image = #imageLiteral(resourceName: "1200px-Flag_of_India.svg")
                    break
                    
                    case "AUD" :
                        Image1.image = #imageLiteral(resourceName: "index")
                    break
                    
                    case "CAD" :
                        Image1.image = #imageLiteral(resourceName: "51YCk1KrXWL._SL1414_")
                        print("========")
                    break
                
                default:
                break
                }
                
                switch changeLabel2.text
                {
                
                    case "USD" :
                        Image2.image = #imageLiteral(resourceName: "images")
                    break
                
                    case "INR" :
                        Image2.image = #imageLiteral(resourceName: "1200px-Flag_of_India.svg")
                    break
                    
                    case "AUD" :
                        Image2.image = #imageLiteral(resourceName: "index")
                    break
                    
                    case "CAD" :
                        Image2.image = #imageLiteral(resourceName: "51YCk1KrXWL._SL1414_")
                           print("*******")
                    break
             
                default:
                break
                }
            
print("view will appear")

        }
        
    }

extension ViewController {

    

    func addDoneButtonOnKeyboard(){

        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))

        doneToolbar.barStyle = .default


        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)

        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))


        let items = [flexSpace, done]

        doneToolbar.items = items

        doneToolbar.sizeToFit()


        inputAmount.inputAccessoryView = doneToolbar

    }


    @objc func doneButtonAction(){

        inputAmount.resignFirstResponder()
        print("done button on keyboard")

    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
           let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
           return string.rangeOfCharacter(from: invalidCharacters) == nil
       }

}

