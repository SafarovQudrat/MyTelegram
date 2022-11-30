//
//  SettingsVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class SettingsVC: UIViewController {
    
    @IBOutlet weak var imgViewBtn: UIButton!
    @IBOutlet weak var nickNamelbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    var imgname: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
setNavBAr()
        nickNamelbl.text = "\(cache.string(forKey: "Surname")!) \(cache.string(forKey: "Name")!)"
        nameLbl.text = "+998 \(cache.string(forKey: "Number")!)"
        
    }
    func setNavBAr() {
        let apperence = UINavigationBarAppearance()
        apperence.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
        apperence.titleTextAttributes =  [.foregroundColor: UIColor.white]
        self.navigationItem.scrollEdgeAppearance = apperence
        self.navigationItem.title = "Settings"
    }

   

}
