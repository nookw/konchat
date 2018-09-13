//
//  ViewController.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/01.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons
import MaterialComponents.MaterialNavigationBar
import MaterialComponents.MaterialBottomNavigation

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var start: MDCButtonBarButton!
    
    
    @IBAction func startAction(_ sender: Any) {
        self.performSegue(withIdentifier: "tableseg", sender: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

