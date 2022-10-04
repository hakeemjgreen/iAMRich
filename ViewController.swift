//
//  ViewController.swift
//  App
//
//  Created by Hakeem Green on 10/2/22.
//

import UIKit

class ViewController: UIViewController {

    let stackView = UIStackView()
    let label = UILabel()
    let img = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}

extension ViewController{
    func style(){
        view.backgroundColor = .systemBlue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I am rich"
        label.textAlignment = .center
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textColor = .white
        label.numberOfLines = 0
        
        // Do any additional setup after loading the view.
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
            
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "diamond")
        img.contentMode = .scaleAspectFit
    }
    func layout(){
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(img)
        
        view.addSubview(stackView)
        //Label
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: img.topAnchor )
        ])
        
        //Image
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalToSystemSpacingBelow: label.topAnchor, multiplier: 8),
            img.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            img.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            img.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
//
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),

        ])
    }
}
