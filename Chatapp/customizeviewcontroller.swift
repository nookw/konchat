//
//  customizeviewcontroller.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/08.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit

class customizeviewcontroller: UIViewController {
    
    
    @IBAction func tetete(_ sender: Any) {
        self.performSegue(withIdentifier: "tetete", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
