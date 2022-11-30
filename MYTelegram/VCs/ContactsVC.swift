//
//  ContactsVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class ContactsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arr:[UserDM] = [UserDM(img: UIImage(systemName: "person.circle")!, fullname: "", lasttime: "")]
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBAr()
        setUpTableView()
        addBtn()
    }
    func setNavBAr() {
        let apperence = UINavigationBarAppearance()
        apperence.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
        apperence.backgroundColor = .black
        apperence.titleTextAttributes =  [.foregroundColor: UIColor.white]
        self.navigationItem.scrollEdgeAppearance = apperence
        self.navigationItem.title = "Contacts"
    }
    
    
    
    
    func addBtn() {
        let addbtn = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(addTapped))
        let sortbtn = UIBarButtonItem(title: "Sort", style: .done, target: self, action: #selector(sortTapped))
        self.navigationItem.rightBarButtonItem = addbtn
        self.navigationItem.leftBarButtonItem = sortbtn
    }
    @objc func addTapped() {
     let vc = EditVC(nibName: "EditVC", bundle: nil)
        let navvc = UINavigationController(rootViewController: vc)
        self.present(navvc, animated: true)
        vc.editData = { data in
            guard let data = data else {return}
            self.arr.append(data)
            self.tableView.reloadData()
        }
    }
    @objc func sortTapped() {
        
    }
    
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ContactsTVC", bundle: nil), forCellReuseIdentifier: "ContactsTVC")
        tableView.register(UINib(nibName: "SearchTVC", bundle: nil), forCellReuseIdentifier: "SearchTVC")
    }

    

}
extension ContactsVC:UITableViewDelegate {
    
}
extension ContactsVC:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsTVC", for: indexPath) as? ContactsTVC else{return UITableViewCell()}
        guard let searchcell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC", for: indexPath) as? SearchTVC else{return UITableViewCell()}
        cell.updatecell(user: arr[indexPath.row])
        if indexPath.row == 0 {
            return searchcell
        } else {
            return cell
        }
    }
    
    
}
