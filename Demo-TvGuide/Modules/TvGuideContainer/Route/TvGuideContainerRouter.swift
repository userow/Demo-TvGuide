//
//  TvGuideContainerRouter.swift
//  Demo-TvGuide
//
//  Created by Pavlo Vasylenko on 22.06.2023.
//

import Foundation
import UIKit

class TvGuideContainerRouter: TvGuideContainerPresenterToRouterProtocol{
    
    // MARK: - Methods
    
    class func createModule() -> UIViewController {
        
        let view = TvGuideContainerViewController()
        let presenter: TvGuideContainerViewToPresenterProtocol & TvGuideContainerInteractorToPresenterProtocol = LiveNewsPresenter()
        let interactor: TvGuideContainerPresentorToInteractorProtocol = LiveNewsInteractor()
        let router: TvGuideContainerPresenterToRouterProtocol = TvGuideContainerRouter()
        
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
}
