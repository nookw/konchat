//
//  StartViewController.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/09.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons

class StartViewController: UIViewController {
    
    @IBOutlet weak var start: MDCButton!
    
    @IBAction func startAction(_ sender: Any) {
        self.performSegue(withIdentifier: "startshow", sender: nil)
    }
    
}
