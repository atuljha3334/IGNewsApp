//
//  BaseTableViewCell.swift
//  IGNewsApp
//
//  Created by Atul Jha on 11/12/21.
//

import UIKit
import Foundation

class BaseTableViewCell<A>: UITableViewCell {
    var datasource: A!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        selectionStyle = .none
    }
}
