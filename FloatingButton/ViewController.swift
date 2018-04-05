//
//  ViewController.swift
//  FloatingButton
//
//  Created by Marcelo on 04/04/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Properties
    private var btn = UIButton(type: .custom)
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        floatingButton()
        
        
    }
    

    // MARK: - Floating Button Helper
    func floatingButton(){
//        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 180, y: 58, width: 40, height: 40)
        btn.setTitle("X", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 20
        btn.layer.borderColor = UIColor.black.cgColor
        btn.layer.borderWidth = 3.0
        btn.addTarget(self, action: #selector(didSelectFloatingButton), for: UIControlEvents.touchUpInside)

        
        view.addSubview(btn)
    }

    @objc private func didSelectFloatingButton() {
        print("SELECTED FLOAT BUTTON")
    }
    
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = ">  \(indexPath.row)"
        return cell!

    }
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        
//        let  off = self.tableView.contentOffset.y
//        
//        btn.frame = CGRect(x: 285, y: 58, width: btn.frame.size.width, height: btn.frame.size.height)
//    }
    
    
}

