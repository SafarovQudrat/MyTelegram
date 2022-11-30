//
//  ChatsVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class ChatsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavBAr()
    }
    func setNavBAr() {
        let apperence = UINavigationBarAppearance()
        apperence.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
        apperence.titleTextAttributes =  [.foregroundColor: UIColor.white]
        self.navigationItem.scrollEdgeAppearance = apperence
        self.navigationItem.title = "Chats"
    }

    

}
