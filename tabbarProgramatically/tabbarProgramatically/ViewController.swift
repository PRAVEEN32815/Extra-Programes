//
//  ViewController.swift
//  tabbarProgramatically
//
//  Created by Arun Muthukumar on 11/03/21.
//  Copyright © 2021 Arun Muthukumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tabController = UITabBarController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTabbarController()
        setup()
    }
    
    func setup(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Fourth VC", style: .plain, target: self, action: #selector(buttonTapped))
    }
    @objc func buttonTapped(){
        navigationController?.pushViewController(fourthViewController(), animated: true)
    }

    
    func createTabbarController(){
        
        let vc1 = firstViewController()
        let vc2 = SecondViewController()
        let vc3 = ThirdViewController()
        
        self.view.addSubview(tabController.view)
        tabController.setViewControllers([vc1,vc2,vc3], animated: true)
        tabController.tabBar.backgroundColor = .black
    }
}

class firstViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        self.title = "orange"
    }
    
}

class SecondViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.title = "blue"
    }
}

class ThirdViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.title = "green"
    }
}

class fourthViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.title = "yellow"
    }
}










