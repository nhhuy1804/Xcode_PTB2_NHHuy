//
//  ViewController.swift
//  GiaiPhuongTrinhBac2_Nhom5_iOS
//
//  Created by MrDummy on 4/9/17.
//  Copyright © 2017 MrDummy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txta: UITextField!
    
    @IBOutlet weak var txtb: UITextField!
    
    @IBOutlet weak var txtc: UITextField!
    
    @IBOutlet weak var lblNghiem1: UILabel!
    
    @IBOutlet weak var lblNghiem2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblNghiem1.isHidden = true
        
        lblNghiem2.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        @IBAction func btnGiai(_ sender: Any) {
        
        lblNghiem2.text = ""
        lblNghiem1.isHidden = false
        if (txta.text! == "" || txtb.text! == "" || txtc.text! == ""){
            lblNghiem1.text = "Khong duoc de trong!!"
        }else{
            let a:Double = Double(txta.text!)!
            let b:Double = Double(txtb.text!)!
            let c:Double = Double(txtc.text!)!
            
            if(a == 0){
                if(b == 0){
                    if(c == 0){
                        lblNghiem1.text = "PT vo so nghiem"
                    }else{
                        lblNghiem1.text = "PT vo nghiem"
                    }
                }else{
                    lblNghiem1.text = "PT co nghiem x = \(-b/a)"
                }
            }else{
                let d = b*b - 4*a*c
                
                if(d < 0){
                    lblNghiem1.text = "PT vo nghiem"
                }else if(d == 0){
                    lblNghiem1.text = "PT co nghiem x = \(-b/(2*a))"
                }else{
                    lblNghiem2.isHidden = false
                    let x1 = (-b+sqrt(d))/(2*a)
                    let x2 = (-b-sqrt(d))/(2*a)
                    lblNghiem1.text = "PT co nghiem x1 = \(x1)"
                    lblNghiem2.text = "PT co nghiem x2 = \(x2)"
                }
            }
        }
        
    }

}

