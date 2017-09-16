//
//  LeftViewController.swift
//  TestSlideMenu
//
//  Created by 一騎高橋 on 2016/09/25.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit

enum LeftMenu: Int {
    case main = 0
}

protocol LeftMenuProtocol : class {
    func changeViewController(_ menu: LeftMenu)
}

class LeftViewController: UIViewController {

    var mainViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func changeViewController(_ menu: LeftMenu) {
        switch menu {
        case .main:
            self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
        }
    }

}
