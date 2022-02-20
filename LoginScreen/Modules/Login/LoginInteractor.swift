//
//  LoginInteractor.swift
//  Login
//
//  Created by Aung Chan Nyein on 2/20/22.
//

import Foundation

final class LoginInteractor: InteractorInterface {

    weak var presenter: LoginPresenterInteractorInterface!
}

extension LoginInteractor: LoginInteractorPresenterInterface {

}
