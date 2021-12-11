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
    
    // MARK: - Variables

    var newsData: NewsResponseModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsServiceInvoke()
    }
    
    // MARK: - Service Call

    private func newsServiceInvoke() {
        ServiceManager.shared.newsServiceCall { result in
            self.newsData = result
            print(self.newsData)
        }
    }
    
    // MARK: - Button Actions

    @IBAction func onClickButtonOne(_ sender: Any) {
    }
    @IBAction func onClickButtonTwo(_ sender: Any) {
    }
    @IBAction func onClickButtonThree(_ sender: Any) {
    }
    @IBAction func onClickButtonFour(_ sender: Any) {
    }
    
}
