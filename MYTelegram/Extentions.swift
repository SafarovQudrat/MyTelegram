//
//  Extentions.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import Foundation
import UIKit
struct UserDM {
    var img:UIImage?
    var fullname:String
    var lasttime:String
    var phoneNum:String?
}
extension UIViewController {
    func addBorder(txt:[UIView]?) {
        for i in txt! {
            (i).layer.borderColor = UIColor.darkGray.cgColor
            (i ).layer.borderWidth = 1
            (i ).layer.cornerRadius = 15
        }
    }
}

