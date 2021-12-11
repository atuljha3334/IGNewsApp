//
//  NewsListTableViewCell.swift
//  IGNewsApp
//
//  Created by Atul Jha on 11/12/21.
//

import UIKit

class NewsListTableViewCell: BaseTableViewCell<TopNews> {

    @IBOutlet weak var headlineImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
        
    override var datasource: TopNews! {
        didSet {
            setupImageView()
        }
    }
    
    func setupImageView() {
        newsTitleLabel.text = datasource.title
//        let imageString = datasource.headlineImageUrl ?? ""
//        if let url = URL(string: imageString) {
//            do {
//                let data = try Data(contentsOf: url)
//                headlineImageView.image = UIImage(data: data)
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
    }
}
