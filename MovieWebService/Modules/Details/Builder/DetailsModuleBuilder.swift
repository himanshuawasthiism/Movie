//
//  DetailsModuleBuilder.swift
//  MovieWebService
//
//
//  Copyright © 2018 TestCompany. All rights reserved.
//

import UIKit

@objc class DetailsModuleBuilder: NSObject {

    class func build(with data: Director) -> UIViewController {

        let viewController = DetailsViewController()
        viewController.director = data
        let router = DetailsRouter()
        router.viewController = viewController

        let presenter = DetailsPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = DetailsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    

        return viewController
    }

}
