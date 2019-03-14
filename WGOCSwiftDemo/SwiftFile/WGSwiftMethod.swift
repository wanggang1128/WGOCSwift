//
//  WGSwiftMethod.swift
//  WGOCSwiftDemo
//
//  Created by wanggang on 2019/3/14.
//  Copyright © 2019 bozhong. All rights reserved.
//

import UIKit

class WGSwiftMethod: NSObject {

    @objc func swiftRun(name:String) {
        print((name)+"跑起来了")
        let alert = UIAlertView.init(title: nil, message: ((name)+"跑起来了"), delegate: self, cancelButtonTitle: "确定")
        alert.show()
    }
}
