//
//  NewsListingViewController.swift
//  IGNewsApp
//
//  Created by Atul Jha on 11/12/21.
//

import UIKit

class NewsListingViewController: UIViewController {

    @IBOutlet weak var segmentView: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var selectedSegmentIndex: Int?
    var responseData: NewsResponseModel?
    var newsListData: [TopNews]?
    var typeOfNews: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentView.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "NewsListTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsListTableViewCell")
    }
}

extension NewsListingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsListData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListTableViewCell") as? NewsListTableViewCell
        cell?.newsTitleLabel.text = "TITLE HERE..."
        cell?.datasource = newsListData?[indexPath.row]
        return cell ?? UITableViewCell()
    }
}
