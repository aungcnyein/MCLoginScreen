//
//  LoginModule.swift
//  Login
//
//  Created by Aung Chan Nyein on 2/20/22.
//
import Foundation
import UIKit

// MARK: - router

protocol LoginRouterPresenterInterface: RouterPresenterInterface {

}

// MARK: - presenter

protocol LoginPresenterRouterInterface: PresenterRouterInterface {

}

protocol LoginPresenterInteractorInterface: PresenterInteractorInterface {

}

protocol LoginPresenterViewInterface: PresenterViewInterface {
    
}

// MARK: - interactor

protocol LoginInteractorPresenterInterface: InteractorPresenterInterface {

}

// MARK: - view

protocol LoginViewPresenterInterface: ViewPresenterInterface {

}


// MARK: - module builder

final class LoginModule: ModuleInterface {

    typealias View = LoginView
    typealias Presenter = LoginPresenter
    typealias Router = LoginRouter
    typealias Interactor = LoginInteractor

    func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: View.identifier) as! View
        let interactor = Interactor()
        let presenter = Presenter()
        let router = Router()

        self.assemble(view: view, presenter: presenter, router: router, interactor: interactor)

        router.viewController = view

        return view
    }
}
