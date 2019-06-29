//
//  ViewController.swift
//  LightDarkPort
//
//  Created by Tim Ng on 6/29/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    fileprivate func setupPortfolioView(_ portfolioView: PortfolioView) {
        view.addSubview(portfolioView)
        portfolioView.constrainWidth(constant: view.frame.width)
        portfolioView.constrainHeight(constant: 300)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let portfolioView = PortfolioView()
        
        setupPortfolioView(portfolioView)
        
        let tableView = UITableView()
        tableView.register(StockCell.self, forCellReuseIdentifier: "cellId")
        
        let stackView = UIStackView(arrangedSubviews: [portfolioView, tableView])
        
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.fillSuperview()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! StockCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow: IndexPath? = tableView.indexPathForSelectedRow
        if let selectedRowNotNill = selectedRow {
            tableView.deselectRow(at: selectedRowNotNill, animated: true)
        }
    }
    
}

