//
//  SignupViewController.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/10.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit
import Firebase
import MaterialComponents.MaterialTextFields
import MaterialComponents.MaterialButtons
import FirebaseAuth

class SignupViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: MDCTextField!
    
    @IBOutlet weak var passwordTextField: MDCTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self //デリゲートをセット
        passwordTextField.delegate = self //デリゲートをセット
        passwordTextField.isSecureTextEntry = true // 文字を非表示に
        
//        self.layoutFacebookButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func willSignup() {
        signup()
    }
    
    @IBAction func willTransitionToLogin() {
        transitionToLogin()
    }
    
    func transitionToLogin() {
        self.performSegue(withIdentifier: "toLogin", sender: self)
    }
    
    func transitionToView() {
        self.performSegue(withIdentifier: "toView", sender: self)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func signup() {
        
        guard emailTextField.text != nil else  { return }
        guard passwordTextField.text != nil else { return }
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            //エラーなしなら、認証完了
            if error == nil{
                // エラーがない場合にはそのままログイン画面に飛び、ログインしてもらう
                self.transitionToLogin()
                
            } else {
            
                print("\(String(describing: error?.localizedDescription))")
            }
        })
            
    }
    
}
