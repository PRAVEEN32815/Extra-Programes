//
//  TableViewCell.swift
//  UserInterface
//
//  Created by Arun Muthukumar on 16/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    static let identifier = "TableViewCell"

    static func nib() -> UINib{
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    func configure(pic :UIImage) {
        img1.image = pic
    }
    func configure2(title : String){
        label1?.text = title
    }
    func configure3(title : String){
        label2?.text = title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        img1.layer.borderWidth = 3
        img1.layer.borderColor = UIColor.black.cgColor
        img1.layer.cornerRadius = img1.frame.height / 2
        img1.clipsToBounds = true
    }
    
}
