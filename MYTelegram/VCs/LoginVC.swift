//
//  LoginVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 11/11/22.
//

import UIKit
//import Lottie
var cache = UserDefaults.standard
class LoginVC: UIViewController {

    
//    @IBOutlet weak var lottieView: LottieAnimationView!
    @IBOutlet weak var numberTf: UITextField!
    @IBOutlet weak var continueBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
    }
   
    @IBAction func continueTapped(_ sender: Any) {
        cache.setValue(numberTf.text, forKey: "Number")
        if numberTf.text?.count == 9 {
//            continueBtn.isEnabled = true
            continueBtn.backgroundColor = .tintColor
            continueBtn.setTitleColor( .white, for: .normal)
            let vc = RegisterVC(nibName: "RegisterVC", bundle: nil)
             self.navigationController?.pushViewController(vc, animated: true)
        } else {
//            continueBtn.isEnabled = false
            continueBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
            continueBtn.setTitleColor( .gray, for: .normal)
        }
       
    }
    
    
    
    
    
   
}
