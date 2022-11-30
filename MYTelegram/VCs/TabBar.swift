//
//  TabBar.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstvc = ContactsVC(nibName: "ContactsVC", bundle: nil)
        let firstnavvc = UINavigationController(rootViewController: firstvc)
        let firstitem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        firstnavvc.tabBarItem = firstitem
        
        let secondvc = ChatsVC(nibName: "ChatsVC", bundle: nil)
        let secondnavvc = UINavigationController(rootViewController: secondvc)
        let seconditem = UITabBarItem(title: "Chats", image: UIImage(systemName: "message.fill"), tag: 1)
        secondnavvc.tabBarItem = seconditem
        
        let thirdvc = SettingsVC(nibName: "SettingsVC", bundle: nil)
        let thirdnavvc = UINavigationController(rootViewController: thirdvc)
        let thirditem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 2)
        thirdnavvc.tabBarItem = thirditem
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
           tabBar.scrollEdgeAppearance = appearance
        
        
        
        
        
        
        
        
        self.viewControllers = [firstnavvc,secondnavvc,thirdnavvc]
    }
    

    

}
