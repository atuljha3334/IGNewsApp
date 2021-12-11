//
//  NewsDiscriptionViewController.swift
//  IGNewsApp
//
//  Created by USER on 11/12/21.
//

import UIKit

class NewsDiscriptionViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var newsDiscriptionLabel: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    
    // MARK: - Variables

    var newsData: TopNews?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - SetupUI

    private func setupUI() {
        newsDiscriptionLabel.text = newsData?.description ?? ""
        authorLabel.text = "By: \(newsData?.authors?.first?.name ?? "") (\(newsData?.authors?.first?.title ?? ""))"
        let imageString = newsData?.headlineImageUrl ?? ""
        if let url = URL(string: imageString) {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.newsImageView.image = UIImage(data: data)
                }
            }
        }
    }
}
