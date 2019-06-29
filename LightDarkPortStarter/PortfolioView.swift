//
//  PortfolioView.swift
//  LightDarkPort
//
//  Created by Tim Ng on 6/29/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import UIKit

class PortfolioView: UIView {
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "addButton"), for: .normal)
        return button
    }()
    
    let logoImageView: UIImageView = {
        let iv =  UIImageView(image: UIImage(named: "logo"))
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    
    let portfolioLabel: UILabel = {
        let label = UILabel()
        label.text = "MAIN PORTFOLIO"
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 13)
        label.textColor = UIColor(named: "portfolioLabel")
        label.textAlignment = .center
        return label
    }()
    
    let valueLabel: UILabel = {
        let label = UILabel()
        label.text = "$8,499.990"
        label.font = .systemFont(ofSize: 40)
        label.textColor = UIColor(named: "valueLabel")
        label.textAlignment = .center
        return label
    }()
    
    let tickLabel: UILabel = {
        let label = UILabel()
        label.text = "▲ $0.050/0.75%"
        label.textColor = .green
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUI() {
        addSubview(logoImageView)
        logoImageView.centerXInSuperview()
        logoImageView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 16, left: 0, bottom: 0, right: 0))
        
        
        let stackView = UIStackView(arrangedSubviews: [ portfolioLabel, valueLabel, tickLabel])
        stackView.axis = .vertical
        stackView.spacing = 4
        addSubview(stackView)
        stackView.centerXInSuperview()
        stackView.anchor(top: logoImageView.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        
        addSubview(addButton)
        addButton.anchor(top: nil, leading: nil, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 16, right: 16))
        addButton.constrainHeight(constant: 50)
        addButton.constrainWidth(constant: 50)
        addButton.layer.cornerRadius = 50 / 2
    }
    
}
