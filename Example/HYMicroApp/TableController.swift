//
//  TableController.swift
//  MicroAppTest
//
//  Created by Honglin Yi on 8/11/18.
//  Copyright © 2018 henryyi. All rights reserved.
//

import UIKit
import HYMicroApp


public class TableController: UITableViewController{
     
    struct Controller {
        let name:String
        let url:String
    }
    var controllers = [Controller(name:"Vas Sonic", url: "https://github.com/Tencent/VasSonic/blob/master/sonic-iOS/README.md"), Controller(name: "Mei Tuan", url: "https://tech.meituan.com/WebViewPerf.html"), Controller(name: "Dictionary", url: "https://www.urbandictionary.com/define.php?term=hah"), Controller(name: "YouTube", url: "https://www.youtube.com/watch?v=UHuhjeDgIKY") ]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controllers.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controllers[indexPath.row].name
        return cell
    }
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = controllers[indexPath.row]
        self.present(HYMicroController(aUrl: controller.url), animated: true, completion: nil)
    }
}
