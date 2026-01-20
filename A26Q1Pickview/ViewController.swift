//
//  ViewController.swift
//  A26Q1Pickview
//
//  Created by Danny Shen on 2026/1/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var thePickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thePickerView.delegate = self
        thePickerView.dataSource = self
        
    }
}

extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        3
    }
    
    
}
