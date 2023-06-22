//
//  ChannelsInteractor.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation

import DemoTvGuideSwaggerApi

class ChannelsInteractor: ChannelsPresentorToInteractorProtocol {

    // MARK: - Properties
    weak var presenter: ChannelsInteractorToPresenterProtocol?
    var channels: [ChannelDisplayModel]?

    // MARK: - Methods
    func fetchChannels() {
        ChannelsAPI.getAllChannels { [weak self] data, error in
            // ??? thread ? = .main !!!

            guard let data else {
                self?.presenter?.channelsFetchFailed(error)
                return
            }
            var channels = [ChannelDisplayModel]()

            data.forEach { chan in
                channels.append(ChannelDisplayModel(channel: chan))
            }

            self?.channels = channels
            self?.presenter?.channelsFetched()
        }
    }
}
