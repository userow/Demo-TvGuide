//
//  TvGuideContainerPresenter.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation

class TvGuideContainerPresenter: TvGuideContainerViewToPresenterProtocol {
    
    // MARK: - Properties
    weak var view: TvGuideContainerPresenterToViewProtocol?
    var interactor: TvGuideContainerPresentorToInteractorProtocol?
    var router: TvGuideContainerPresenterToRouterProtocol?
    
    // MARK: - Methods
    func updateView() {
        interactor?.fetchLiveNews()
    }
    
    func getNewsListCount() -> Int? {
        return interactor?.news?.count
    }
    
    func getNews(index: Int) -> LiveNewsModel? {
//        return interactor?.channels?[index]
        return nil
    }
}

// MARK: - TvGuideContainerInteractorToPresenterProtocol
extension TvGuideContainerPresenter: TvGuideContainerInteractorToPresenterProtocol {
	func channelsFetched() {
//        view?.showNews()
    }
    
    func channelsFetchedFailed(_ error: Error?) {
//        view?.showError()
    }
}

