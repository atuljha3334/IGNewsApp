//
//  ViewController.swift
//  IGNewsApp
//
//  Created by Atul Jha on 10/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var newsButtonOne: UIButton!
    @IBOutlet weak var newsButtonTwo: UIButton!
    @IBOutlet weak var newsButtonThree: UIButton!
    @IBOutlet weak var newsButtonFour: UIButton!
    @IBOutlet weak var breakingNewsLabel: UILabel!
    @IBOutlet weak var breakingNewsView: UIView!
    
    // MARK: - Variables

    var newsData: NewsResponseModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsServiceInvoke()
        setupUI()
    }
    
    // MARK: - SetupUI

    private func setupUI() {
        if !(newsData?.breakingNews == "" || newsData?.breakingNews == nil) {
            breakingNewsView.isHidden = false
        }
    }
    
    // MARK: - Service Call

    private func newsServiceInvoke() {
        ServiceManager.shared.newsServiceCall { result in
            self.newsData = result
            self.setupBreakingNews(data: self.newsData)
//            print(self.newsData)
        }
    }
    
    private func setupBreakingNews(data: NewsResponseModel?) {
        DispatchQueue.main.async {
            self.breakingNewsLabel.text = data?.breakingNews
        }
    }
    
    // MARK: - Button Actions

    @IBAction func onClickButtonOne(_ sender: Any) {
        let listViewController = NewsListingViewController()
        listViewController.responseData = newsData
        listViewController.typeOfNews = TypeOfNews.topNews.rawValue
        listViewController.newsListData = newsData?.topNews
        navigationController?.pushViewController(listViewController, animated: true)
    }
    
    @IBAction func onClickButtonTwo(_ sender: Any) {
        let listViewController = NewsListingViewController()
        listViewController.responseData = newsData
        listViewController.typeOfNews = TypeOfNews.dailyBriefings.rawValue
        listViewController.newsListData = newsData?.dailyBriefings?.eu
        navigationController?.pushViewController(listViewController, animated: true)
    }
    
    @IBAction func onClickButtonThree(_ sender: Any) {
        let listViewController = NewsListingViewController()
        listViewController.responseData = newsData
        listViewController.typeOfNews = TypeOfNews.technicalAnalysis.rawValue
        listViewController.newsListData = newsData?.technicalAnalysis
        navigationController?.pushViewController(listViewController, animated: true)
    }
    
    @IBAction func onClickButtonFour(_ sender: Any) {
        let listViewController = NewsListingViewController()
        listViewController.responseData = newsData
        listViewController.typeOfNews = TypeOfNews.specialReport.rawValue
        listViewController.newsListData = newsData?.specialReport
        navigationController?.pushViewController(listViewController, animated: true)
    }
    
}
