//
//  LoginView.swift
//  Login
//
//  Created by Aung Chan Nyein on 2/20/22.
//

import Foundation
import UIKit

final class LoginView: UIViewController, ViewInterface {
    
    @IBOutlet weak var imgMyanmarCast: UIImageView!
    @IBOutlet weak var txtFieldUserId: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet weak var btnContinueWithGoogle: UIButton!
    @IBOutlet weak var btnContinueWithFacebook: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var lbChooseLanguage: UILabel!
    @IBOutlet weak var btnEnglish: UIButton!
    @IBOutlet weak var lbEngButton: UILabel!
    @IBOutlet weak var btnZawgyi: UIButton!
    @IBOutlet weak var lbZawgyiButton: UILabel!
    @IBOutlet weak var btnUnicode: UIButton!
    @IBOutlet weak var lbUnicodeButton: UILabel!
    
    var presenter: LoginPresenterViewInterface!
    
    static let identifier = "LoginView"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        makeFilledRoundedCornerButton(btnLogin)
        makeRoundedCornerButton(btnContinueWithGoogle)
        makeRoundedCornerButton(btnContinueWithFacebook)
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        print("Login")
    }
    
    @IBAction func didTapForgotPassword(_ sender: Any) {
        print("Forgot Password")
    }
    
    @IBAction func didTapContinueWithGoogle(_ sender: Any) {
        print("Continue with Google")
    }
    
    @IBAction func didTapContinueWithFacebook(_ sender: Any) {
        print("Continue with Facebook")
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        print("Sign Up")
    }
    
    @IBAction func didTapEnglishButton(_ sender: Any) {
        print("Change to English")
    }
    
    @IBAction func didTapZawgyiButton(_ sender: Any) {
        print("Change to Zawgyi")
    }
    
    @IBAction func didTapUnicodeButton(_ sender: Any) {
        print("Change to Unicode")
    }
    
    private func makeRoundedCornerButton(_ button: UIButton) {
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.opaqueSeparator.cgColor
        button.layer.cornerRadius = 20
    }
    
    private func makeFilledRoundedCornerButton(_ button: UIButton) {
        button.layer.cornerRadius = 20
    }

}

extension LoginView: LoginViewPresenterInterface {

}
