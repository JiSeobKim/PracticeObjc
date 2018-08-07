//
//  ViewController.swift
//  s_Hypnosister
//
//  Created by 김지섭 on 2018. 8. 7..
//  Copyright © 2018년 김지섭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let view = UIView()
        view.frame = CGRect(x: 160, y: 240, width: 100, height: 150)
        
        view.backgroundColor = .red
        
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

