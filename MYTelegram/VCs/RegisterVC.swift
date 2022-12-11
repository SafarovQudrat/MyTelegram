//
//  RegisterVC.swift
//  MYTelegram
//
//  Created by MacBook Pro on 11/11/22.
//

import UIKit
//import TextFieldEffects

class RegisterVC: UIViewController {

    
    @IBOutlet weak var imgbtn: UIButton!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var SurnameTf: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    var istapped = false
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
        saveImage()
    }

    @IBAction func imgTapped(_ sender: Any) {
        let imgVC = UIImagePickerController()
        imgVC.delegate = self
        imgVC.sourceType = .savedPhotosAlbum
       
        self.present(imgVC, animated: true)
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        istapped = true
        cache.setValue(nameTf.text, forKey: "Name")
        cache.setValue(SurnameTf.text, forKey: "Surname")
        cache.setValue(istapped, forKey: "isTapped")
        loadImage()
//        let vc = SettingsVC(nibName: "SettingsVC", bundle: nil)
//        vc.imgViewBtn.setImage(imgbtn.currentImage ?? UIImage(systemName: "person.circle"), for: .normal)
        if !((nameTf.text ?? "").isEmpty) && !((SurnameTf.text ?? "").isEmpty) {
            signUpBtn.backgroundColor = .tintColor
            signUpBtn.setTitleColor(.white, for: .normal)
            let vc = TabBar()
            loadImage()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        } else {
            signUpBtn.backgroundColor = #colorLiteral(red: 0.2509803922, green: 0.2509803922, blue: 0.2509803922, alpha: 0.2526127897)
            signUpBtn.setTitleColor(.gray, for: .normal)
        }
    }
    

}
extension RegisterVC:UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let reciveIMG = info[.originalImage] as? UIImage
        self.imgbtn.setImage(reciveIMG, for: .normal)
        self.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true)
    }
    
}
extension RegisterVC {
    func saveImage() {
        guard let data = imgbtn.currentImage!.jpegData(compressionQuality: 0.5) else { return }
        let encoded = try! PropertyListEncoder().encode(data)
        UserDefaults.standard.set(encoded, forKey: "KEY")
    }

    func loadImage() {
         guard let data = UserDefaults.standard.data(forKey: "KEY") else { return }
         let decoded = try! PropertyListDecoder().decode(Data.self, from: data)
         let image = UIImage(data: decoded)
        
    }
}
