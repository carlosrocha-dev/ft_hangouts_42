//
//  ViewController.swift
//  ft_hangouts_42
//
//  Created by Carlos Rocha on 26/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    // acesso global privado da view com layz var"
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .red // cor da barraSuperior
        view.translatesAutoresizingMaskIntoConstraints = false //Desabilitar os frames
        return view
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
        view.backgroundColor = UIColor.cyan // Cor de fundo
       
        setHierarchy()
        setConstrains()
    }
    
    private func setHierarchy() {
        view.addSubview(customView)
    }
    
    // Classe para definir as cosntrains
    private func setConstrains () {
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -0),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -680),
        ])
    }

}

