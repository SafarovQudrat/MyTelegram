//
//  LoginVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 11/11/22.
//

import UIKit
import Lottie
import SwiftPhoneNumberFormatter
var cache = UserDefaults.standard
class LoginVC: UIViewController {

    

    
    @IBOutlet weak var borderV: UIView!
    @IBOutlet weak var numberTf: PhoneFormattedTextField!
    @IBOutlet weak var continueBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = ""
        continueBtn.isEnabled = false
        continueBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
        addBorder(txt: [borderV])
        setUpTf()
    }
    func setUpTf() {
        numberTf.config.defaultConfiguration = PhoneFormat(defaultPhoneFormat: "(##)-###-##-##")
        numberTf.prefix = "+998 "
       
        numberTf.textDidChangeBlock = { field in
            if let text = field?.text, text != "" {
                print(text)
              
                if text.count == 19 {
                    self.continueBtn.isEnabled = true
                    self.continueBtn.backgroundColor = .systemCyan

                }else {
                    self.continueBtn.isEnabled = false
                    self.continueBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)

                }
            } else {
                
                print("No text")
            }
        }
    }
    
   
    @IBAction func continueTapped(_ sender: Any) {
        cache.setValue(numberTf.text, forKey: "Number")
     let vc = RegisterVC(nibName: "RegisterVC", bundle: nil)
             self.navigationController?.pushViewController(vc, animated: true)
      
            continueBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
            continueBtn.setTitleColor( .gray, for: .normal)
        
       
    }
    
    
    
    
    
   
}
