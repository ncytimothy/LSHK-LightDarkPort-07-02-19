//
//  StockCell.swift
//  LightDarkPort
//
//  Created by Tim Ng on 6/29/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import UIKit

class StockCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        let tickerLabel = UILabel()
        tickerLabel.text = "939 HK Equity"
        tickerLabel.textColor = .label
        
        let positionLabel = UILabel()
        positionLabel.text = "1,263 shares @ 6.730"
        positionLabel.textColor = UIColor(named: "positionLabel")
        positionLabel.font = .systemFont(ofSize: 15)
        
        let valueLabel = UILabel()
        valueLabel.text = "▲ $0.050/0.75%"
        valueLabel.textColor = .green
        valueLabel.font  = .systemFont(ofSize: 15)
        valueLabel.textAlignment = .right
        
        let marketValueLabel = UILabel()
        marketValueLabel.text = "$8,499.990"
        marketValueLabel.textColor = UIColor(named: "marketValueLabel")
        marketValueLabel.font = .boldSystemFont(ofSize: 15)
        marketValueLabel.textAlignment = .right
        
        let tickerStack = UIStackView(arrangedSubviews: [tickerLabel, positionLabel])
        tickerStack.axis = .vertical
        
        let valueStack = UIStackView(arrangedSubviews: [valueLabel, marketValueLabel])
        valueStack.axis = .vertical
        
        addSubview(tickerStack)
        addSubview(valueStack)
        tickerStack.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: nil, padding: .init(top: 8, left: 8, bottom: 8, right: 0))
        valueStack.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nil, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 8, left: 0, bottom: 8, right: 8))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
