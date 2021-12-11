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
    
    func setUpdatedTime() -> String {
        let timeStamp = datasource.lastUpdatedTimestamp ?? 0
        let deviceTimeStamp = Int(NSDate().timeIntervalSince1970 * 1000)
        let timeDifference = deviceTimeStamp - timeStamp
        let epochDiff1 = timeDifference
        var diff = ""
        if epochDiff1 / 86400000 >= 1 {
            diff = "\(epochDiff1 / 86400000) days"
        } else if epochDiff1 / 3600000 >= 1 {
            diff = "\(epochDiff1 / 3600000) hours"
        } else if epochDiff1 / 60000 >= 1 {
            diff = "\(epochDiff1 / 3600000) mins"
        }
        return diff
    }
    
    func setupImageView() {
        newsTitleLabel.text = datasource.title
        authorLabel.text = "Last updated: \(setUpdatedTime()) ago"
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
