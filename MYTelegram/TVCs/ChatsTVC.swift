//
//  ChatsTVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class ChatsTVC: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updatecell(user:UserDM) {
        imgView.image = user.img
        titleLbl.text = user.fullname
        messageLbl.text = user.lasttime
        
    }
    
}
