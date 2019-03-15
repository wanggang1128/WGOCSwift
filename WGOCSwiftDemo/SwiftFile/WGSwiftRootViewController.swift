//
//  WGSwiftRootViewController.swift
//  WGOCSwiftDemo
//
//  Created by wanggang on 2019/3/14.
//  Copyright © 2019 bozhong. All rights reserved.
//

import UIKit

class WGSwiftRootViewController: UIViewController {

    let tableView = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
    let identifer = "cell"
    var dataArr = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBaseView()
    }
    
    func setBaseView() {
        
        self.navigationItem.title = "WGSwiftRootViewController"
        self.view.backgroundColor = UIColor.red
        
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifer)
        view.addSubview(tableView)
    }
}

extension WGSwiftRootViewController:UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let vc = WGOCFirstViewController.init()
//        self.navigationController?.pushViewController(vc, animated: true)

        //对于OC文件,两种跳转方式都可以
        WGControllerPush.wgControllerPushShare()?.push(from: self, toCon: "WGOCFirstViewController")
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
}
