//
//  TvGuideContainerProtocols.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
import UIKit

protocol TvGuideContainerPresenterToViewProtocol: AnyObject {
    func showNews()
    func showError()
}

protocol TvGuideContainerInteractorToPresenterProtocol: AnyObject {
    func channelsFetched()
    func channelsFetchedFailed(_ error: Error?)
}

protocol TvGuideContainerPresentorToInteractorProtocol: AnyObject {
    var presenter: TvGuideContainerInteractorToPresenterProtocol? { get set }
//    var news: [LiveNewsModel]? { get }
    
    func fetchLiveNews()
}

protocol TvGuideContainerViewToPresenterProtocol: AnyObject {
    var view: TvGuideContainerPresenterToViewProtocol? { get set }
    var interactor: TvGuideContainerPresentorToInteractorProtocol? { get set }
    var router: TvGuideContainerPresenterToRouterProtocol? { get set }
    
    func updateView()

    //get data func -s
}

protocol TvGuideContainerPresenterToRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
}
