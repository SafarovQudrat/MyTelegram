//
//  ContactsTVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit
class ContactsTVC: UITableViewCell {

    @IBOutlet weak var imgBtn: UIImageView!
    @IBOutlet weak var lastOnline: UILabel!
    @IBOutlet weak var fullName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func updatecell(user:UserDM) {
        imgBtn.image = user.img
        fullName.text = user.fullname
        lastOnline.text = user.lasttime
    }
    
    
}
