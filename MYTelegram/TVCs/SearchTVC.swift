//
//  SearchTVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class SearchTVC: UITableViewCell {

    @IBOutlet weak var searchField: UITextField!
    
    @IBOutlet weak var view: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.darkGray.cgColor
        view.layer.cornerRadius = 20
        
    }

  
    
}
