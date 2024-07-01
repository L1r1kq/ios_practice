//
//  ViewController.swift
//  lesson_2
//
//  Created by Кирилл Титов on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let login: String = "Admin"
    let password: String = "Admin"
    
    var userDefaults = UserDefaults.standard
    
    @IBOutlet weak var myWarning: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = .image2
        myButton.layer.cornerRadius = 16
    }

    
    @IBAction func myButtonTapped(_ sender: Any) {
        let vc = ViewController2()
        if myTextField.text == login && passwordTextField.text == password {
            performSegue(withIdentifier: "123", sender: self)
        } else {
            myWarning.text = "Неверный логин/пароль"}
    }
}
