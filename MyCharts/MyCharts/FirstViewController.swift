//
//  FirstViewController.swift
//  MyCharts
//
//  Created by Manjunath Shivakumara on 06/03/18.
//  Copyright © 2018 Manjunath Shivakumara. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{

    @IBOutlet weak var barChart: BarChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let f: (CGFloat) -> CGPoint = {
            let noiseY = (CGFloat(arc4random_uniform(2)) * 2 - 1) * CGFloat(arc4random_uniform(4))
            let noiseX = (CGFloat(arc4random_uniform(2)) * 2 - 1) * CGFloat(arc4random_uniform(4))
            let b: CGFloat = 5
            let y = 2 * $0 + b + noiseY
            return CGPoint(x: $0 + noiseX, y: y)
        }
        
        let xs = [Int](1..<20)
        
        let points = xs.map({f(CGFloat($0 * 10))})
        
        barChart.deltaX = 20
        barChart.deltaY = 30
        
        barChart.plot(points)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

