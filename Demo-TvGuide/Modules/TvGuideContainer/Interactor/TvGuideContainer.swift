//
//  TvGuideContainerInteractor.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
//import Alamofire

class LiveNewsInteractor: TvGuideContainerPresentorToInteractorProtocol {

    // MARK: - Properties
    weak var presenter: TvGuideContainerInteractorToPresenterProtocol?
    var news: [LiveNewsModel]?
    
    // MARK: - Methods
    func fetchLiveNews() {
//        Alamofire.request(Constants.URL).response { response in
//            if(response.response?.statusCode == 200){
//                guard let data = response.data else { return }
//                do {
//                    let decoder = JSONDecoder()
//                    let newsResponse = try decoder.decode(NewsResponse.self, from: data)
//                    guard let articles = newsResponse.articles else { return }
//                    self.news = articles
//                    self.presenter?.liveNewsFetched()
//                } catch let error {
//                    print(error)
//                }
//            }
//            else {
//                self.presenter?.liveNewsFetchedFailed()
//            }
//        }
    }
}
