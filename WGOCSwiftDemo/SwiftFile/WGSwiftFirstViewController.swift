//
//  WGSwiftFirstViewController.swift
//  WGOCSwiftDemo
//
//  Created by wanggang on 2019/3/14.
//  Copyright © 2019 bozhong. All rights reserved.
//

import UIKit

class WGSwiftFirstViewController: UIViewController {

    let btn = UIButton.init(frame: CGRect.init(x: 10, y: 100, width: 200, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setBaseView()
    }
    
    func setBaseView() {
        self.title = "WGSwiftFirstViewController";
        view.backgroundColor = UIColor.green
        
        btn.setTitle("点击运行OC方法", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func btnClick() {
        
        let method = WGOCMethod.init()
        method.ocRun("WGOCMethod")
    }
}
