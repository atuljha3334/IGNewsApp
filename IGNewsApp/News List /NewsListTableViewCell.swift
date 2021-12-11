//
//  NewsListTableViewCell.swift
//  IGNewsApp
//
//  Created by Atul Jha on 11/12/21.
//

import UIKit

class NewsListTableViewCell: BaseTableViewCell<TopNews> {

    // MARK: - Outlets

    @IBOutlet weak var headlineImageView: UIImageView!
    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override var datasource: TopNews! {
        didSet {
            setupImageView()
        }
    }
    
    func setupImageView() {
        newsTitleLabel.text = datasource.title
        authorLabel.text = "By: \(datasource.authors?.first?.name ?? "")"
        let imageString = datasource?.headlineImageUrl ?? ""
        if let url = URL(string: imageString) {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.headlineImageView.image = UIImage(data: data)
                }
            }
        }
    }
}
