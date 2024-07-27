//
//  ViewController.swift
//  ft_hangouts_42
//
//  Created by Carlos Rocha on 26/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    // Background
    private lazy var backgroundView: UIImageView = {
        let BgView = UIImageView()
        BgView.image = UIImage(named: "Background")
        BgView.contentMode = .scaleAspectFill
        BgView.translatesAutoresizingMaskIntoConstraints = false
        return BgView
    }()
    
    // HeaderBar
    private lazy var headerBar: UIView = {
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .black
        headerView.alpha = 0.65
//        headerView.layer.cornerRadius = 20
        return headerView
    }()
    
    // LogoAPP
    private lazy var logoApp: UIView = {
        let logoView = UIImageView()
        logoView.image = UIImage(named: "LogoApp")
        logoView.contentMode = .scaleAspectFill
        logoView.translatesAutoresizingMaskIntoConstraints = false
        return logoView
    }()
    
    // TitleViewAPP
    private lazy var titleViewAPP: UILabel = {
        let titleView = UILabel()
        titleView.font = UIFont(name: "Playball-Regular", size: 16)
        titleView.translatesAutoresizingMaskIntoConstraints = false
        titleView.text = "Contatos"
        titleView.textAlignment = .right
        titleView.textColor = .white
        return titleView
    }()
    
    // Add Button
    private lazy var addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(pointSize: 30, weight: .regular)
        button.setImage(UIImage(systemName: "plus.circle", withConfiguration: configuration), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // Message Button
    private lazy var messageButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(pointSize: 30, weight: .regular)
        button.setImage(UIImage(systemName: "message.circle", withConfiguration: configuration), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(messageButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // Call Button
    private lazy var callButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        let configuration = UIImage.SymbolConfiguration(pointSize: 30, weight: .regular) //
        button.setImage(UIImage(systemName: "phone.circle", withConfiguration: configuration), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(callButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override  func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView (){
        
        // Define estilos
//        view.backgroundColor = UIColor.cyan // Cor de fundo
       
        setHierarchy()
        setConstrains()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerBar)
        
        headerBar.addSubview(logoApp)
        headerBar.addSubview(titleViewAPP)
        headerBar.addSubview(addButton)
        headerBar.addSubview(messageButton)
        headerBar.addSubview(callButton)
        
    }
    
    // Classe para definir as cosntrains
    private func setConstrains () {
        
        // Background constraints
        NSLayoutConstraint.activate([
              backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
              backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
              backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
              backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Header Constraints
        NSLayoutConstraint.activate([
            headerBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            headerBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            headerBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            headerBar.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        //Header constraints
        NSLayoutConstraint.activate([
            logoApp.topAnchor.constraint(equalTo: headerBar.topAnchor, constant: 65),
            logoApp.leadingAnchor.constraint(equalTo: headerBar.leadingAnchor, constant: 20),
            logoApp.trailingAnchor.constraint(equalTo: headerBar.trailingAnchor, constant: -280)
        ])
        
        //Title constraints
        NSLayoutConstraint.activate([
            titleViewAPP.topAnchor.constraint(equalTo: headerBar.topAnchor, constant: 120),
            titleViewAPP.centerXAnchor.constraint(equalTo: headerBar.centerXAnchor)
        ])
        
        // Message Button constraints
         NSLayoutConstraint.activate([
             messageButton.centerYAnchor.constraint(equalTo: logoApp.centerYAnchor),
             messageButton.trailingAnchor.constraint(equalTo: headerBar.trailingAnchor, constant: -20)
         ])
         
         // Call Button constraints
         NSLayoutConstraint.activate([
             callButton.centerYAnchor.constraint(equalTo: logoApp.centerYAnchor),
             callButton.trailingAnchor.constraint(equalTo: messageButton.leadingAnchor, constant: -20)
         ])
         
         // Add Button constraints
         NSLayoutConstraint.activate([
             addButton.centerYAnchor.constraint(equalTo: logoApp.centerYAnchor),
             addButton.trailingAnchor.constraint(equalTo: callButton.leadingAnchor, constant: -20)
         ])
    }

    @objc private func addButtonTapped() {
        // Handle add button tap
        print("Add button tapped")
    }
    
    @objc private func messageButtonTapped() {
        // Handle message button tap
        print("Message button tapped")
    }
    
    @objc private func callButtonTapped() {
        // Handle call button tap
        print("Call button tapped")
    }

}

