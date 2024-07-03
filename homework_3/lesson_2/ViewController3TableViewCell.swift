//
//  ViewController3TableViewCell.swift
//  lesson_2
//
//  Created by Кирилл Титов on 03.07.2024.
//

import UIKit

class ViewController3TableViewCell: UITableViewCell {


    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        authorLabel.text = nil
    }

    func config(user: Book) {
        nameLabel.text = user.name
        authorLabel.text = user.author
        myImage.image = user.image
    }
}
