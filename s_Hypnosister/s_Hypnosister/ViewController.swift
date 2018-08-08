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
        
        
        
        let view = subView(frame: self.view.bounds)

        
        view.backgroundColor = .red
        self.view.addSubview(view)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

class subView: UIView {
    override func draw(_ rect: CGRect) {
        let x1 = self.bounds.origin.x + self.bounds.size.width / 2
        let y1 = self.bounds.origin.y + self.bounds.size.height / 2
        let center = CGPoint(x: x1, y: y1)
        
        let maxRadius = min(self.bounds.height, self.bounds.width) / 2
        let path = UIBezierPath()
        path.addArc(withCenter: center, radius: maxRadius, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        
        
        UIColor.blue.set()
        path.lineWidth = 10
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        
        path.close()
        
        path.stroke()
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        <#code#>
//    }
}

