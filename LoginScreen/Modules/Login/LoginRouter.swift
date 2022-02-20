//
//  LoginRouter.swift
//  Login
//
//  Created by Aung Chan Nyein on 2/20/22.
//

import Foundation
import UIKit

final class LoginRouter: RouterInterface {

    weak var presenter: LoginPresenterRouterInterface!

    weak var viewController: UIViewController?
}

extension LoginRouter: LoginRouterPresenterInterface {

}