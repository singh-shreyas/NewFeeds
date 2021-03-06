//
//  AppLandingViewController.swift
//  NewsFeeds
//
//  Created by shreyas on 12/10/17.
//  Copyright © 2017 shreyas. All rights reserved.
//

import UIKit

class AppLandingViewController: UIViewController {

  
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenus()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func sideMenus() {
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
        
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
    }
    
    

}
