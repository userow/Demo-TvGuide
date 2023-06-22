//
//  TvGuideContainerViewController.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import UIKit
//import Alamofire

class TvGuideContainerViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var timeLineView: UIView!
    @IBOutlet weak var channelsView: UIView!
    @IBOutlet weak var tvGuideView: UIView!
    
    // MARK: - Properties
    var presenter: TvGuideContainerViewToPresenterProtocol?
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.updateView()
    }
    
    private func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "LiveNewsTableViewCell", bundle: .main), forCellReuseIdentifier: "LiveNewsTableViewCell")
    }
}

// MARK: - TvGuideContainerPresenterToViewProtocol
extension TvGuideContainerViewController: TvGuideContainerPresenterToViewProtocol {

	func showNews() {
        tableView.reloadData()
    }
    
    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching News", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
