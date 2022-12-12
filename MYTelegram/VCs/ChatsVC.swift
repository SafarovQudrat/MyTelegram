//
//  ChatsVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 14/11/22.
//

import UIKit

class ChatsVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
  
    var arr:[UserDM] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addBtn()
        setUpTableView()
        setNavBAr()
    }
    func setNavBAr() {
        let apperence = UINavigationBarAppearance()
        apperence.backgroundEffect = UIBlurEffect(style: .systemChromeMaterialDark)
        apperence.titleTextAttributes =  [.foregroundColor: UIColor.white]
        self.navigationItem.scrollEdgeAppearance = apperence
        self.navigationItem.title = "Chats"
    }
    func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChatsTVC", bundle: nil), forCellReuseIdentifier: "ChatsTVC")
        tableView.register(UINib(nibName: "SearchTVC", bundle: nil), forCellReuseIdentifier: "SearchTVC")
    }
    
    
    
    
    func addBtn() {
        let addbtn = UIBarButtonItem(image: UIImage(systemName: "square.and.pencil"), style: .done, target: self, action: #selector(addTapped))
        let sortbtn = UIBarButtonItem(title: "Sort", style: .done, target: self, action: #selector(sortTapped))
        self.navigationItem.rightBarButtonItem = addbtn
        self.navigationItem.leftBarButtonItem = sortbtn
    }
    @objc func addTapped() {
     
        tableView.reloadData()
    }
    @objc func sortTapped() {
        
    }
    
    
    
    
}



extension ChatsVC:UITableViewDelegate {
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "delete") { _, _, _ in
            self.arr.remove(at: indexPath.row-1)
            tableView.reloadData()
        }
        let configuration = UISwipeActionsConfiguration(actions: [delete])
        
        return configuration
    }
    
}
extension ChatsVC:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count+1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatsTVC", for: indexPath) as? ChatsTVC else{return UITableViewCell()}
        guard let searchcell = tableView.dequeueReusableCell(withIdentifier: "SearchTVC", for: indexPath) as? SearchTVC else{return UITableViewCell()}
        if indexPath.row == 0 {
            return searchcell
        } else {
            cell.updatecell(user: arr[indexPath.row-1])
            return cell
        }
    }
    
    
}
