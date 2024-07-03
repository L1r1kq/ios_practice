//
//  ViewController2.swift
//  lesson_2
//
//  Created by Кирилл Титов on 01.07.2024.
//

import UIKit

class ViewController2: UIViewController {

    var userDefaults = UserDefaults.standard
    
    
    @IBOutlet weak var myUserImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myBackground: UIView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func myExitButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
