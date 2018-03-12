//
//  CustomCell.swift
//  TurboZakatApp
//
//  Created by Hamza Lakhani on 2018-02-27.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
        
        var item: ViewModelItem? {
            didSet {
                titleLabel?.text = item?.title
            }
        }
        
        override func awakeFromNib() {
            super.awakeFromNib()
            
            selectionStyle = .none
        }
        
        @IBOutlet weak var titleLabel: UILabel?
        
        static var nib:UINib {
            return UINib(nibName: identifier, bundle: nil)
        }
        
        static var identifier: String {
            return String(describing: self)
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // update UI
            accessoryType = selected ? .checkmark : .none
        }
}
