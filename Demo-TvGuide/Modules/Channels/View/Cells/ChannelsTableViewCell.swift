//
//  ChannelsTableViewCell.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import UIKit

class ChannelsTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK:- Methods
    func setCell(title: String, number: Int) {
        numberLabel.text = "\(number)"
        titleLabel.text = title
    }
    
}
