//
//  TrafficView.swift
//  Traffic Light Color Picker
//
//  Created by Umar Akram on 18/01/2026.
//

import UIKit

class TrafficView: UIView {
    
    var color: UIColor!
    
    init(color: UIColor) {
        super.init(frame: .zero)
        self.color = color
        setup()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        layer.cornerRadius = 200 / 2
        clipsToBounds = true
        backgroundColor = color
        alpha = 0.25
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
