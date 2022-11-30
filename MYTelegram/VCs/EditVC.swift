//
//  EditVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 30/11/22.
//

import UIKit

class EditVC: UIViewController {

    @IBOutlet weak var numberTf: UITextField!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var SurnameTf: UITextField!
    
    var editData : ((UserDM?) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavBAr()
        addBtn()
    }

    func setNavBAr() {
        let apperence = UINavigationBarAppearance()
        apperence.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
        apperence.backgroundColor = .black
        apperence.titleTextAttributes =  [.foregroundColor: UIColor.white]
        self.navigationItem.scrollEdgeAppearance = apperence
        self.navigationItem.title = "New Contact"
    }
    func addBtn() {
        let addbtn = UIBarButtonItem(title: "Create", style: .done, target: self, action: #selector(addTapped))
        let sortbtn = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(sortTapped))
        self.navigationItem.rightBarButtonItem = addbtn
        self.navigationItem.leftBarButtonItem = sortbtn
    }
    @objc func addTapped() {
        if (nameTf.text ?? "" ).isEmpty && (numberTf.text ?? "" ).isEmpty {
            
        }else {
            let user1 = UserDM(fullname: nameTf.text ?? "", lasttime: SurnameTf.text ?? "",phoneNum:numberTf.text ?? "")
            editData?(user1)
            self.dismiss(animated: true)
        }
    }
    @objc func sortTapped() {
        self.dismiss(animated: true)
    }

}
