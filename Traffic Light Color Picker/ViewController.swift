//
//  ViewController.swift
//  Traffic Light Color Picker
//
//  Created by Umar Akram on 18/01/2026.
//

import UIKit

class ViewController: UIViewController {
    
    var redLight = TrafficView(color: .systemRed)
    var yellowLight = TrafficView(color: .systemYellow)
    var greenLight = TrafficView(color: .systemGreen)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

        addTapGestureRecognizer(to: redLight)
        addTapGestureRecognizer(to: yellowLight)
        addTapGestureRecognizer(to: greenLight)
    }
    
    
    func addTapGestureRecognizer(to view:UIView){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer){
        
        
        if let tappedView = gesture.view {
            UIView.animate(withDuration: 0.25) {
                self.view.subviews.forEach { view in
                    view.alpha = 0.25
                }
                tappedView.alpha = 1
            }
           
        }
    }
    func configure(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(redLight)
        view.addSubview(yellowLight)
        view.addSubview(greenLight)
        
        let padding:CGFloat = 40
        let size:CGFloat = 200
        
        
        NSLayoutConstraint.activate([
            redLight.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            redLight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redLight.widthAnchor.constraint(equalToConstant: size),
            redLight.heightAnchor.constraint(equalToConstant: size),
            
            yellowLight.topAnchor.constraint(equalTo: redLight.bottomAnchor, constant: padding),
            yellowLight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yellowLight.widthAnchor.constraint(equalToConstant: size),
            yellowLight.heightAnchor.constraint(equalToConstant: size),
            
            greenLight.topAnchor.constraint(equalTo: yellowLight.bottomAnchor, constant: padding),
            greenLight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenLight.widthAnchor.constraint(equalToConstant: size),
            greenLight.heightAnchor.constraint(equalToConstant: size),
            
            
        ])
    }
    
    
    
    
    
    
}

