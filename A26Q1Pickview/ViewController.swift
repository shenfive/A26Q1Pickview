//
//  ViewController.swift
//  A26Q1Pickview
//
//  Created by Danny Shen on 2026/1/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var thePickerView: UIPickerView!
    // 首先，我們需要有 星座血型的陣列
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮",
                        "巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮",
                        "射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        thePickerView.delegate = self
        thePickerView.dataSource = self
        
    }
    
    //進入下一個畫面前的處理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goP2"{
            if let nextVC = segue.destination as? SecondViewController{
                nextVC.msg = "\(astrological[thePickerView.selectedRow(inComponent: 1)]) \n \(bloudType[thePickerView.selectedRow(inComponent: 0)]) 型 \n 一定發大財"
            }
        }
    }

    
}

extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return component == 0 ? bloudType.count : astrological.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0: //血型
            return bloudType[row]
        case 1: //星座
            return astrological[row]
        default:
            return  nil
        }
        
    }
    
 
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
 
        
        if pickerView.selectedRow(inComponent: 0) != 0
            && pickerView.selectedRow(inComponent: 1) != 0{
            performSegue(withIdentifier: "goP2", sender: nil)
        }
        
        
        
    }
}
