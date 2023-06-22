//
//  ChannelsRouter.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
import UIKit

class ChannelsRouter: ChannelsPresenterToRouterProtocol{

    // MARK: - Methods
    
    class func createModule() -> UIViewController {
        
        let view = ChannelsViewController()
        let presenter: ChannelsViewToPresenterProtocol & ChannelsInteractorToPresenterProtocol = ChannelsPresenter()
        let interactor: ChannelsPresentorToInteractorProtocol = ChannelsInteractor()
        let router: ChannelsPresenterToRouterProtocol = ChannelsRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }

    // MARK: - External interaction

    func notifyParentOnChange(_ offset: OffsetModel) {
        // TODO:
    }
}
