//
//  SecondViewController.swift
//  A26Q1Pickview
//
//  Created by Danny Shen on 2026/1/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    var msg:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(msg)
        theLabel.text = msg
    }

}
