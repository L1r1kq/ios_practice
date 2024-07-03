//
//  ViewController3.swift
//  lesson_2
//
//  Created by Кирилл Титов on 03.07.2024.
//

import UIKit

class Book {
    var name: String
    var author: String
    var image: UIImage?
    let description: String
    var FavoriteStatus: Bool
    
    init(name: String, author: String, image: UIImage? = nil, description: String, FavoriteStatus: Bool) {
        self.name = name
        self.author = author
        self.image = image
        self.description = description
        self.FavoriteStatus = FavoriteStatus
    }
}

class ViewController3: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: [Book] = [Book(name: "Противостояние", author: "Стивен Кинг", image: UIImage(named:"imageBook1"), description: "«Великий Гэтсби» — роман Фрэнсиса Скотта Фицджеральда, опубликованный в 1925 году. Считается основополагающим произведением об ошибочности американской мечты.В романе рассказывается о молодом человеке Джее Гэтсби, который, влюбившись в женщину из социальной элиты, тратит много денег, пытаясь завоевать её любовь. Она выходит замуж за человека из своего социального слоя, и он умирает, разочаровавшись в концепции self-made man.", FavoriteStatus: true),
                              Book(name: "Портрет Дориана Грея", author: "Оскар Уайлд", image: UIImage(named:"imageBook2"), description: "bla", FavoriteStatus: false),
                              Book(name: "Великий Гэтсби", author: "Фрэнсис Скотт Фицджеральд", image: UIImage(named:"imageBook"), description: "aaaa", FavoriteStatus: true)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }    
    
}



extension ViewController3: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "ViewController3TableViewCell") as? ViewController3TableViewCell else { return UITableViewCell() }

        
        cell.config(user: dataSource[indexPath.row])
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
}


