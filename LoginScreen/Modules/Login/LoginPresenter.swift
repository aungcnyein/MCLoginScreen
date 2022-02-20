//
//  LoginPresenter.swift
//  Login
//
//  Created by Aung Chan Nyein on 2/20/22.
//

import Foundation

final class LoginPresenter: PresenterInterface {

    var router: LoginRouterPresenterInterface!
    var interactor: LoginInteractorPresenterInterface!
    weak var view: LoginViewPresenterInterface!

}

extension LoginPresenter: LoginPresenterRouterInterface {

}

extension LoginPresenter: LoginPresenterInteractorInterface {

}

extension LoginPresenter: LoginPresenterViewInterface {

}
