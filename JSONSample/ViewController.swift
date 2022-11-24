//
//  ViewController.swift
//  JSONSample
//
//  Created by cmStudent on 2020/08/04.
//  Copyright © 2020 20CM0103. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    /*let practice1 = """
     {
     "intValue": 120
     }
     """.data(using: .utf8)!
     
     struct Practice1: Codable {
     let intValye: Int
     
     }*/
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(PracticeUtil<Practice1>.PracticeJSONDecode(data: practice1))
        print(PracticeUtil<Practice2>.PracticeJSONDecode(data: practice2))
        print(PracticeUtil<Practice3>.PracticeJSONDecode(data: practice3))
        print(PracticeUtil<Practice4>.PracticeJSONDecode(data: practice4))
        print(PracticeUtil<Practice5>.PracticeJSONDecode(data: practice5))
        print(PracticeUtil<Practice6>.PracticeJSONDecode(data: practice6))
        print(PracticeUtil<Practice7>.PracticeJSONDecode(data: practice7))
        
        
        // Do any additional setup after loading the view.
    }
    
}



