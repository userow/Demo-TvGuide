//
//  ChannelDisplayModel.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
import UIKit

protocol ChannelsPresenterToViewProtocol: AnyObject {
    func showChannels()
    func showError(_ error: Error?)
}

protocol ChannelsInteractorToPresenterProtocol: AnyObject {
    func channelsFetched()
    func channelsFetchFailed(_ error: Error?)
}

protocol ChannelsPresentorToInteractorProtocol: AnyObject {
    var presenter: ChannelsInteractorToPresenterProtocol? { get set }
    var channels: [ChannelDisplayModel]? { get }
    
    func fetchChannels()
}

protocol ChannelsViewToPresenterProtocol: AnyObject {
    var view: ChannelsPresenterToViewProtocol? { get set }
    var interactor: ChannelsPresentorToInteractorProtocol? { get set }
    var router: ChannelsPresenterToRouterProtocol? { get set }

    func updateView()

    func getChannelsCount() -> Int?
    func getChannel(index: Int) -> ChannelDisplayModel?
}

protocol ChannelsPresenterToRouterProtocol: AnyObject {
    static func createModule() -> UIViewController

    // MARK: - Outer connections
    func notifyParentOnChange(_ offset: OffsetModel)
}
