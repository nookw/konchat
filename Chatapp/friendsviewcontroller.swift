//
//  friendsviewcontroller.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/08.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class friendsviewcontroller: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    let array:[String] = ["kon","nao","unko","pupupu","popopo","ninini","fuck you","こん","なお","うんこ","うんぽっぽ","ぶりぶり","ぱんつ","うんぽ","うんち"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendscell", for: indexPath)
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
        
    }
    
    
}
