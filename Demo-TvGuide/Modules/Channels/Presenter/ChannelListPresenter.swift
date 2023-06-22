//
//  ChannelsPresenter.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation

class ChannelsPresenter: ChannelsViewToPresenterProtocol {

    // MARK: - Properties
    weak var view: ChannelsPresenterToViewProtocol?
    var interactor: ChannelsPresentorToInteractorProtocol?
    var router: ChannelsPresenterToRouterProtocol?
    
    // MARK: - Methods
    func updateView() {
        interactor?.fetchChannels()
    }

    func getChannelsCount() -> Int? {
        return interactor?.channels?.count
    }
    
    func getChannel(index: Int) -> ChannelDisplayModel? {
        return interactor?.channels?[index]
    }
}

// MARK: - ChannelsInteractorToPresenterProtocol
extension ChannelsPresenter: ChannelsInteractorToPresenterProtocol {

    func channelsFetched() {
        view?.showChannels()
    }
    
    func channelsFetchFailed(_ error: Error?) {
        view?.showError(error)
    }
}

