//
//  ChannelsViewController.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import UIKit
//import Alamofire

class ChannelsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    var presenter: ChannelsViewToPresenterProtocol?
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        
        presenter?.updateView()
        
    }
    
    private func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
        tableView.register(UINib(nibName: "ChannelsTableViewCell", bundle: .main), forCellReuseIdentifier: "ChannelsTableViewCell")
    }
}
// MARK: - UITableViewDataSource
extension ChannelsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getChannelsCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChannelsTableViewCell", for: indexPath) as? ChannelsTableViewCell
        let row = indexPath.row
        guard let chan = presenter?.getChannel(index: row) else {
            return cell ?? UITableViewCell()
        }
        cell?.setCell(title: chan.title, number: chan.order)
        return cell ?? UITableViewCell()
    }
}

// MARK: - UITableViewDelegate
extension ChannelsViewController: UITableViewDelegate {}

// MARK: - ChannelsPresenterToViewProtocol
extension ChannelsViewController: ChannelsPresenterToViewProtocol {

    func showChannels() {
        tableView.reloadData()
    }

    func showError(_ error: Error?) {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Channels", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
