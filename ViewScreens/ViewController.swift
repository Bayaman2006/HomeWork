//
//  ViewController.swift
//  sgeg
//
//  Created by Bayaman Jumabekov on 8/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let height = UIScreen.main.bounds.height
    
    private let boyPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "boy")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let welcomeLabel = ViewHelp.shared.createLabel(text: "Welcome Back", size: 44, textColor: .white)
    
    private let welcomeSign = ViewHelp.shared.createLabel(text: "Sign in to continue", size: 30, textColor: .white)
    
    private let emilLable = ViewHelp.shared.createLabel(text: "Employee Id / Email", size: 12, textColor: .lightGray)
    
    private let kutLabel = ViewHelp.shared.createLabel(text: "Password", size: 12, textColor: .lightGray)
    
    private let rememberLabel = ViewHelp.shared.createLabel(text: "Remember Me ", size: 20, textColor: .black)
    
    private let donLabel = ViewHelp.shared.createLabel(text: "Don’t have an Account? ", size: 13, textColor: .black)
    
    @objc private let psBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Forgot Password?", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        view.setTitleColor(.systemBlue, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tfName: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter your name"
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    private let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 22
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tnView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tn2View: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tfPassword: UITextField = {
        let tf = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 8))
        tf.leftView = view
        tf.leftViewMode = .always
        tf.placeholder = "Enter your password"
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 0
        tf.layer.borderColor = UIColor.red.cgColor
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    private let eyePicture: UIButton = {
        let view = UIButton()
        view.tintColor = .gray
        view.setImage(UIImage(named: "eye"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 18, height: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let sqPicture: UIButton = {
        let view = UIButton()
        view.tintColor = .black
        view.setImage(UIImage(named: "sq"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 18, height: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let loginButton: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = UIColor(red: 0.157, green: 0.333, blue: 0.682, alpha: 1).cgColor
        btn.layer.cornerRadius = 15
        btn.setTitle("Sign in", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    @objc private let signBtn: UIButton = {
        let view = UIButton()
        view.setTitle("Sign Up", for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        view.setTitleColor(.systemBlue, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let flowersPicture: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "flawers")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    private func setupUI() {
        view.layer.backgroundColor = UIColor(red: 0.017, green: 0.455, blue: 0.579, alpha:0.69).cgColor
        view.layer.backgroundColor = UIColor(red: 0.29, green: 0.776, blue: 0.914, alpha: 1).cgColor
        
        mainView()
        welcome()
        BGView()
        SignLabel()
        Emil()
        AdiTf()
        ReyView()
        KutLabel()
        BayTf()
        NursView()
        imageView()
        btnHelp()
        sqView()
        remLabel()
        loginButtoN()
        dontLabel()
        btnSign()
        flView()
    }
    
    private func mainView() {
        view.addSubview(boyPicture)
        
        NSLayoutConstraint.activate([
            boyPicture.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            boyPicture.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            boyPicture.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10),
            boyPicture.heightAnchor.constraint(equalToConstant: 256),
            boyPicture.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
    private func welcome() {
        view.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: boyPicture.topAnchor, constant: 260),
            welcomeLabel.leftAnchor.constraint(equalTo: boyPicture.leftAnchor, constant: 10),
            welcomeLabel.rightAnchor.constraint(equalTo: boyPicture.rightAnchor, constant: 10),
            
        ])
    }
    private func BGView() {
        view.addSubview(bgView)
        
        NSLayoutConstraint.activate([
            bgView.bottomAnchor.constraint(equalTo: view.bottomAnchor ),
            bgView.leftAnchor.constraint(equalTo: view.leftAnchor),
            bgView.rightAnchor.constraint(equalTo: view.rightAnchor),
            bgView.heightAnchor.constraint(equalToConstant: height / 2)
        ])
    }
    private func SignLabel() {
        view.addSubview(welcomeSign)
        
        NSLayoutConstraint.activate([
            welcomeSign.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 4),
            welcomeSign.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor, constant: 10),
            welcomeSign.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor, constant: 10),
            
        ])
    }
    private func Emil() {
        view.addSubview(emilLable)
        
        NSLayoutConstraint.activate([
            emilLable.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 40),
            emilLable.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 24),
            emilLable.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -24),
            
        ])
    }
    private func AdiTf() {
        view.addSubview(tfName)
        
        NSLayoutConstraint.activate([
            tfName.topAnchor.constraint(equalTo: emilLable.topAnchor, constant: 25),
            tfName.leftAnchor.constraint(equalTo: emilLable.leftAnchor, constant: 16),
            tfName.rightAnchor.constraint(equalTo: emilLable.rightAnchor, constant: -16),
            //тексфилд 1
        ])
    }
    private func ReyView() {
        view.addSubview(tnView)
        
        NSLayoutConstraint.activate([
            tnView.topAnchor.constraint(equalTo: tfName.topAnchor, constant: 35),
            tnView.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 16),
            tnView.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            tnView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func KutLabel() {
        view.addSubview(kutLabel)
        
        NSLayoutConstraint.activate([
            kutLabel.topAnchor.constraint(equalTo: tnView.topAnchor, constant: 20),
            kutLabel.leftAnchor.constraint(equalTo: tnView.leftAnchor, constant: 10),
            kutLabel.rightAnchor.constraint(equalTo: tnView.rightAnchor, constant: 10),
            
        ])
    }
    private func BayTf() {
        view.addSubview(tfPassword)
        
        NSLayoutConstraint.activate([
            tfPassword.topAnchor.constraint(equalTo: kutLabel.topAnchor, constant: 25),
            tfPassword.leftAnchor.constraint(equalTo: kutLabel.leftAnchor, constant: 16),
            tfPassword.rightAnchor.constraint(equalTo: kutLabel.rightAnchor, constant: -16),
            //тексфилд 2
        ])
    }
    private func NursView() {
        view.addSubview(tn2View)
        
        NSLayoutConstraint.activate([
            tn2View.topAnchor.constraint(equalTo: tfPassword.topAnchor, constant: 35),
            tn2View.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 16),
            tn2View.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            tn2View.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    private func imageView() {
        view.addSubview(eyePicture)
        
        NSLayoutConstraint.activate([
            eyePicture.topAnchor.constraint(equalTo: kutLabel.topAnchor, constant: 25),
            eyePicture.leftAnchor.constraint(equalTo: tfPassword.leftAnchor, constant: 312),
            eyePicture.rightAnchor.constraint(equalTo: tfPassword.rightAnchor, constant: 10),
        ])
    }
    private func btnHelp() {
        view.addSubview(psBtn)
        
        NSLayoutConstraint.activate([
            psBtn.topAnchor.constraint(equalTo: tn2View.topAnchor, constant: 10),
            psBtn.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 265),
            psBtn.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            
        ])
    }
    private func sqView() {
        view.addSubview(sqPicture)
        
        NSLayoutConstraint.activate([
            sqPicture.topAnchor.constraint(equalTo: tn2View.topAnchor, constant: 25),
            sqPicture.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 24),
            sqPicture.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -340),
        ])
    }
    private func remLabel() {
        view.addSubview(rememberLabel)
        
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: tn2View.topAnchor, constant: 25 ),
            rememberLabel.leftAnchor.constraint(equalTo: sqPicture.leftAnchor, constant: 40),
            rememberLabel.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: 183),
            
        ])
    }
    private func loginButtoN() {
        bgView.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: bgView.bottomAnchor, constant: -150),
            loginButton.centerXAnchor.constraint(equalTo: bgView.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 168),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        loginButton.addTarget(self, action: #selector(validateUserData), for: .touchUpInside)
    }
    private func dontLabel() {
        view.addSubview(donLabel)
        
        NSLayoutConstraint.activate([
            donLabel.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 65 ),
            donLabel.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 30),
            donLabel.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: 183),
            
        ])
    }
    private func btnSign() {
        view.addSubview(signBtn)
        
        NSLayoutConstraint.activate([
            signBtn.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 60),
            signBtn.leftAnchor.constraint(equalTo: donLabel.leftAnchor, constant: 5),
            signBtn.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: -16),
            
        ])
    }
    private func flView() {
        view.addSubview(flowersPicture)
        
        NSLayoutConstraint.activate([
            flowersPicture.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 30),
            flowersPicture.leftAnchor.constraint(equalTo: bgView.leftAnchor, constant: 10),
            flowersPicture.rightAnchor.constraint(equalTo: bgView.rightAnchor, constant: 10),
            flowersPicture.heightAnchor.constraint(equalToConstant: 131.84),
            flowersPicture.widthAnchor.constraint(equalToConstant: 374.79)
        ])
    }
   
    @objc func validateUserData(_ sender: UIButton) {
        print("validateUserData")
        
        guard let name = tfName.text else {return}
        guard let password = tfPassword.text else {return}
        
        if (name.isEmpty || name.count < 2 || (password.isEmpty || password.count < 8)) {
            tfName.layer.borderWidth = 2
            tfPassword.layer.borderWidth = 2
        } else {
            tfName.layer.borderWidth = 0
            tfPassword.layer.borderWidth = 0
            let vc = Finish()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
