//
//  SubViewController.swift
//  test
//
//  Created by Kei Kawamura on 2018/09/03.
//  Copyright © 2018年 Kei Kawamura. All rights reserved.
//

import Foundation
import UIKit
import Firebase
class SubViewController: UIViewController{
    //ラベルのコネクション
    @IBOutlet weak var B1AmountLabel: UILabel!
    @IBOutlet weak var S1AmountLabel: UILabel!
    @IBOutlet weak var S2AmountLabel: UILabel!
    @IBOutlet weak var S3AmountLabel: UILabel!
    @IBOutlet weak var D1AmountLabel: UILabel!
    @IBOutlet weak var D3AmountLabel: UILabel!
    @IBOutlet weak var D4AmountLabel: UILabel!
    @IBOutlet weak var DX1AmountLabel: UILabel!
    @IBOutlet weak var DX2AmountLabel: UILabel!
    @IBOutlet weak var DX3AmountLabel: UILabel!
    @IBOutlet weak var DX4AmountLabel: UILabel!
    @IBOutlet weak var De1AmountLabel: UILabel!
    @IBOutlet weak var De2AmountLabel: UILabel!
    @IBOutlet weak var De3AmountLabel: UILabel!
    
    @IBOutlet weak var B1StepperValue: UIStepper!
    @IBOutlet weak var S1StepperValue: UIStepper!
    @IBOutlet weak var S2StepperValue: UIStepper!
    @IBOutlet weak var S3StepperValue: UIStepper!
    @IBOutlet weak var D1StepperValue: UIStepper!
    @IBOutlet weak var D3StepperValue: UIStepper!
    @IBOutlet weak var D4StepperValue: UIStepper!
    @IBOutlet weak var DX1StepperValue: UIStepper!
    @IBOutlet weak var DX2StepperValue: UIStepper!
    @IBOutlet weak var DX3StepperValue: UIStepper!
    @IBOutlet weak var DX4StepperValue: UIStepper!
    @IBOutlet weak var De1StepperValue: UIStepper!
    @IBOutlet weak var De2StepperValue: UIStepper!
    @IBOutlet weak var De3StepperValue: UIStepper!
    
    @IBOutlet weak var AllB1AmountLabel: UILabel!
    @IBOutlet weak var AllS1AmountLabel: UILabel!
    @IBOutlet weak var AllS2AmountLabel: UILabel!
    @IBOutlet weak var AllS3AmountLabel: UILabel!
    @IBOutlet weak var AllD1AmountLabel: UILabel!
    @IBOutlet weak var AllD3AmountLabel: UILabel!
    @IBOutlet weak var AllD4AmountLabel: UILabel!
    @IBOutlet weak var AllDX1AmountLabel: UILabel!
    @IBOutlet weak var AllDX2AmountLabel: UILabel!
    @IBOutlet weak var AllDX3AmountLabel: UILabel!
    @IBOutlet weak var AllDX4AmountLabel: UILabel!
    @IBOutlet weak var AllDe1AmountLabel: UILabel!
    @IBOutlet weak var AllDe2AmountLabel: UILabel!
    @IBOutlet weak var AllDe3AmountLabel: UILabel!
    @IBOutlet weak var AllSBAmountLabel: UILabel!
    
    @IBOutlet weak var BStatus: UILabel!
    @IBOutlet weak var SStatus: UILabel!
    @IBOutlet weak var DStatus: UILabel!
    @IBOutlet weak var DXStatus: UILabel!
    @IBOutlet weak var DeStatus: UILabel!
    
    
    @IBOutlet weak var tableNumberLabel: UILabel!
    
    var tableNumber : String?
    var DBRef1:DatabaseReference!
    var status : String?
    var status2 : String?
    var intstatus2 : Int?
    var bstatus : String?
    var sstatus : String?
    var dstatus : String?
    var dxstatus : String?
    var destatus : String?
    var b1amount : String?
    var s1amount : String?
    var s2amount : String?
    var s3amount : String?
    var d1amount : String?
    var d3amount : String?
    var d4amount : String?
    var dx1amount : String?
    var dx2amount : String?
    var dx3amount : String?
    var dx4amount : String?
    var de1amount : String?
    var de2amount : String?
    var de3amount : String?
    var hoge : String?
    var bamount = 0
    var samount = 0
    var damount = 0
    var ddamount = 0
    var dxamount = 0
    var deamount = 0
    var Bsetamount = 0
    var Ssetamount = 0
    var BSsetamount = 0
    var noIceAmount = 0
    var allb1amount : String?
    var alls1amount : String?
    var alls2amount : String?
    var alls3amount : String?
    var alld1amount : String?
    var alld3amount : String?
    var alld4amount : String?
    var alldx1amount : String?
    var alldx2amount : String?
    var alldx3amount : String?
    var alldx4amount : String?
    var allde1amount : String?
    var allde2amount : String?
    var allde3amount : String?
    var allsbamount : String?
    var newallb1amount : Int?
    var newalls1amount : Int?
    var newalls2amount : Int?
    var newalls3amount : Int?
    var newalld1amount : Int?
    var newalld3amount : Int?
    var newalld4amount : Int?
    var newalldx1amount : Int?
    var newalldx2amount : Int?
    var newalldx3amount : Int?
    var newalldx4amount : Int?
    var newallde1amount : Int?
    var newallde2amount : Int?
    var newallde3amount : Int?
    var newallsbamount : Int?

    
    //Stepper
    @IBAction func B1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        B1AmountLabel.text = "\(Amount)"
    }
    @IBAction func S1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        S1AmountLabel.text = "\(Amount)"
    }
    @IBAction func S2Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        S2AmountLabel.text = "\(Amount)"
    }
    @IBAction func S3Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        S3AmountLabel.text = "\(Amount)"
    }
    @IBAction func D1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        D1AmountLabel.text = "\(Amount)"
    }
    @IBAction func D3Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        D3AmountLabel.text = "\(Amount)"
    }
    @IBAction func D4Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        D4AmountLabel.text = "\(Amount)"
    }
    @IBAction func DX1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        DX1AmountLabel.text = "\(Amount)"
    }
    @IBAction func DX2Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        DX2AmountLabel.text = "\(Amount)"
    }
    @IBAction func DX3Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        DX3AmountLabel.text = "\(Amount)"
    }
    @IBAction func DX4Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        DX4AmountLabel.text = "\(Amount)"
    }
    @IBAction func De1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        De1AmountLabel.text = "\(Amount)"
    }
    @IBAction func De2Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        De2AmountLabel.text = "\(Amount)"
    }
    @IBAction func De3Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        De3AmountLabel.text = "\(Amount)"
    }
    
    
    //各ボタン機能
    @IBAction func add(_ sender: Any) {
        self.bamount = Int(self.B1AmountLabel.text!)!
        self.samount = Int(self.S1AmountLabel.text!)! + Int(self.S2AmountLabel.text!)! + Int(self.S3AmountLabel.text!)!
        self.ddamount = Int(self.D1AmountLabel.text!)! + Int(self.D3AmountLabel.text!)! + Int(self.D4AmountLabel.text!)!
        self.dxamount = Int(self.DX1AmountLabel.text!)! + Int(self.DX2AmountLabel.text!)! + Int(self.DX3AmountLabel.text!)! + Int(self.DX4AmountLabel.text!)!
        self.damount = self.ddamount + self.dxamount
        self.deamount = Int(self.De1AmountLabel.text!)! + Int(self.De2AmountLabel.text!)! + Int(self.De3AmountLabel.text!)!
        
        let alertController1 = UIAlertController(title: "注文",message: "", preferredStyle: UIAlertController.Style.alert)
        let okAction1 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
            let defaultPlacex = self.DBRef1.child("table/status").child(self.tableNumber!)
            defaultPlacex.observeSingleEvent(of: .value, with: { (snapshot) in
                self.status = (snapshot.value! as AnyObject).description
                if Int(self.status!) == 1{
                    let alertController = UIAlertController(title: "変更はキャンセル後に行ってください",message: "", preferredStyle: UIAlertController.Style.alert)
                    let OKButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                    alertController.addAction(OKButton)
                    self.present(alertController,animated: true,completion: nil)
                }else if Int(self.status!) == 2 || Int(self.status!) == 3 || Int(self.status!) == 4{
                    let alertController = UIAlertController(title: "調理中の商品があります",message: "誰かにいってね", preferredStyle: UIAlertController.Style.alert)
                    let OKButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                    alertController.addAction(OKButton)
                    self.present(alertController,animated: true,completion: nil)
                }else if self.damount < self.samount||self.damount < self.bamount||self.bamount + self.samount < self.damount{
                    let alertController = UIAlertController(title: "注文が無効です",message: "", preferredStyle: UIAlertController.Style.alert)
                    let OKButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
                    alertController.addAction(OKButton)
                    self.present(alertController,animated: true,completion: nil)
                }else{
            //オーダーの入力
            self.b1amount = self.B1AmountLabel.text
            self.s1amount = self.S1AmountLabel.text
            self.s2amount = self.S2AmountLabel.text
            self.s3amount = self.S3AmountLabel.text
            self.d1amount = self.D1AmountLabel.text
            self.d3amount = self.D3AmountLabel.text
            self.d4amount = self.D4AmountLabel.text
            self.dx1amount = self.DX1AmountLabel.text
            self.dx2amount = self.DX2AmountLabel.text
            self.dx3amount = self.DX3AmountLabel.text
            self.dx4amount = self.DX4AmountLabel.text
            self.de1amount = self.De1AmountLabel.text
            self.de2amount = self.De2AmountLabel.text
            self.de3amount = self.De3AmountLabel.text
            self.Bsetamount = self.damount - self.samount
            self.Ssetamount = self.damount - self.bamount
            self.BSsetamount = self.bamount + self.samount - self.damount
            self.noIceAmount = self.damount - self.deamount
            
            self.DBRef1.child("table/order").child(self.tableNumber!).setValue(["b1amount":self.b1amount!,"b3amount":0,"b4amount":0,"s1amount":self.s1amount!,"s2amount":self.s2amount!,"s3amount":self.s3amount!,"d1amount":self.d1amount!,"d2amount":0,"d3amount":self.d3amount!,"d4amount":self.d4amount!,"dx1amount":self.dx1amount!,"dx2amount":self.dx2amount!,"dx3amount":self.dx3amount!,"dx4amount":self.dx4amount!,"de1amount":self.de1amount!,"de2amount":self.de2amount!,"de3amount":self.de3amount!, "time":ServerValue.timestamp()])
            self.DBRef1.child("table/status").child(self.tableNumber!).setValue(1)
            self.DBRef1.child("table/tbstatus").child(self.tableNumber!).setValue(1)
                    self.DBRef1.child("table/setamount").child(self.tableNumber!).setValue(["bset":self.Bsetamount,"sset":self.Ssetamount,"bsset":self.BSsetamount,"noice":self.noIceAmount])
            
            //オーダーキーの設定
            let key = self.DBRef1.child("table/orderorder").childByAutoId().key;
            self.DBRef1.child("table/orderorder").child(key).setValue(self.tableNumber!)
            self.DBRef1.child("table/orderkey").child(self.tableNumber!).setValue(key)
            //データセット
            self.DBRef1.child("indata").child(key).setValue(["time":ServerValue.timestamp(),"table":self.tableNumber!,"b1":self.b1amount!,"s1":self.s1amount!,"s2":self.s2amount!,"s3":self.s3amount!,"d1":self.d1amount!,"d2":0,"d3":self.d3amount!,"d4":self.d4amount!,"dx1":self.dx1amount!,"dx2":self.dx2amount!,"dx3":self.dx3amount!,"dx4":self.dx4amount!,"de1":self.de1amount!,"de2":self.de2amount!,"de3":self.de3amount!,"bset":self.Bsetamount,"sset":self.Ssetamount,"bsset":self.BSsetamount,"noice":self.noIceAmount])
            
            //全食数の更新
            let defaultPlace = self.DBRef1.child("table/allorder/allb1amount")
            defaultPlace.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allb1amount = (snapshot.value! as AnyObject).description
                self.newallb1amount = Int(self.allb1amount!)! - Int(self.b1amount!)!
                self.DBRef1.child("table/allorder/allb1amount").setValue(self.newallb1amount)
            })
            let defaultPlace3 = self.DBRef1.child("table/allorder/alls1amount")
            defaultPlace3.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls1amount = (snapshot.value! as AnyObject).description
                self.newalls1amount = Int(self.alls1amount!)! - Int(self.s1amount!)!
                self.DBRef1.child("table/allorder/alls1amount").setValue(self.newalls1amount)
            })
            let defaultPlace10 = self.DBRef1.child("table/allorder/alls2amount")
            defaultPlace10.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls2amount = (snapshot.value! as AnyObject).description
                self.newalls2amount = Int(self.alls2amount!)! - Int(self.s2amount!)!
                self.DBRef1.child("table/allorder/alls2amount").setValue(self.newalls2amount)
            })
            let defaultPlace11 = self.DBRef1.child("table/allorder/alls3amount")
            defaultPlace11.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls3amount = (snapshot.value! as AnyObject).description
                self.newalls3amount = Int(self.alls3amount!)! - Int(self.s3amount!)!
                self.DBRef1.child("table/allorder/alls3amount").setValue(self.newalls3amount)
            })
            let defaultPlace12 = self.DBRef1.child("table/allorder/alld1amount")
            defaultPlace12.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld1amount = (snapshot.value! as AnyObject).description
                self.newalld1amount = Int(self.alld1amount!)! - Int(self.d1amount!)!
                self.DBRef1.child("table/allorder/alld1amount").setValue(self.newalld1amount)
            })
            let defaultPlace5 = self.DBRef1.child("table/allorder/alld3amount")
            defaultPlace5.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld3amount = (snapshot.value! as AnyObject).description
                self.newalld3amount = Int(self.alld3amount!)! - Int(self.d3amount!)!
                self.DBRef1.child("table/allorder/alld3amount").setValue(self.newalld3amount)
            })
            let defaultPlace6 = self.DBRef1.child("table/allorder/alld4amount")
            defaultPlace6.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld4amount = (snapshot.value! as AnyObject).description
                self.newalld4amount = Int(self.alld4amount!)! - Int(self.d4amount!)!
                self.DBRef1.child("table/allorder/alld4amount").setValue(self.newalld4amount)
            })
            let defaultPlace13 = self.DBRef1.child("table/allorder/alldx1amount")
            defaultPlace13.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx1amount = (snapshot.value! as AnyObject).description
                self.newalldx1amount = Int(self.alldx1amount!)! - Int(self.dx1amount!)!
                self.DBRef1.child("table/allorder/alldx1amount").setValue(self.newalldx1amount)
            })
            let defaultPlace14 = self.DBRef1.child("table/allorder/alldx2amount")
            defaultPlace14.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx2amount = (snapshot.value! as AnyObject).description
                self.newalldx2amount = Int(self.alldx2amount!)! - Int(self.dx2amount!)!
                self.DBRef1.child("table/allorder/alldx2amount").setValue(self.newalldx2amount)
            })
            let defaultPlace15 = self.DBRef1.child("table/allorder/alldx3amount")
            defaultPlace15.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx3amount = (snapshot.value! as AnyObject).description
                self.newalldx3amount = Int(self.alldx3amount!)! - Int(self.dx3amount!)!
                self.DBRef1.child("table/allorder/alldx3amount").setValue(self.newalldx3amount)
            })
            let defaultPlace16 = self.DBRef1.child("table/allorder/alldx4amount")
            defaultPlace16.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx4amount = (snapshot.value! as AnyObject).description
                self.newalldx4amount = Int(self.alldx4amount!)! - Int(self.dx4amount!)!
                self.DBRef1.child("table/allorder/alldx4amount").setValue(self.newalldx4amount)
            })
            let defaultPlace7 = self.DBRef1.child("table/allorder/allde1amount")
            defaultPlace7.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde1amount = (snapshot.value! as AnyObject).description
                self.newallde1amount = Int(self.allde1amount!)! - Int(self.de1amount!)!
                self.DBRef1.child("table/allorder/allde1amount").setValue(self.newallde1amount)
            })
            let defaultPlace8 = self.DBRef1.child("table/allorder/allde2amount")
            defaultPlace8.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde2amount = (snapshot.value! as AnyObject).description
                self.newallde2amount = Int(self.allde2amount!)! - Int(self.de2amount!)!
                self.DBRef1.child("table/allorder/allde2amount").setValue(self.newallde2amount)
            })
            let defaultPlace9 = self.DBRef1.child("table/allorder/allde3amount")
            defaultPlace9.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde3amount = (snapshot.value! as AnyObject).description
                self.newallde3amount = Int(self.allde3amount!)! - Int(self.de3amount!)!
                self.DBRef1.child("table/allorder/allde3amount").setValue(self.newallde3amount)
            })
            let defaultPlace17 = self.DBRef1.child("table/allorder/allsbamount")
            defaultPlace17.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allsbamount = (snapshot.value! as AnyObject).description
                self.newallsbamount = Int(self.allsbamount!)! - self.Ssetamount
                self.DBRef1.child("table/allorder/allsbamount").setValue(self.newallsbamount)
            })
            
                }
            })
        }
        let cancelButton1 = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler: nil)
        
        alertController1.addAction(okAction1)
        alertController1.addAction(cancelButton1)
        present(alertController1,animated: true,completion: nil)
    }
    
    
    @IBAction func dlete(_ sender: Any) {
        self.bamount = Int(self.B1AmountLabel.text!)!
        self.samount = Int(self.S1AmountLabel.text!)! + Int(self.S2AmountLabel.text!)! + Int(self.S3AmountLabel.text!)!
        self.ddamount = Int(self.D1AmountLabel.text!)! + Int(self.D3AmountLabel.text!)! + Int(self.D4AmountLabel.text!)!
        self.dxamount = Int(self.DX1AmountLabel.text!)! + Int(self.DX2AmountLabel.text!)! + Int(self.DX3AmountLabel.text!)! + Int(self.DX4AmountLabel.text!)!
        self.damount = self.ddamount + self.dxamount
        self.deamount = Int(self.De1AmountLabel.text!)! + Int(self.De2AmountLabel.text!)! + Int(self.De3AmountLabel.text!)!
        
        let alertController3 = UIAlertController(title: "削除",message: "", preferredStyle: UIAlertController.Style.alert)
        let okAction3 = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
            self.Ssetamount = self.damount - self.bamount
            //全食数の更新
            let defaultPlace = self.DBRef1.child("table/allorder/allb1amount")
            defaultPlace.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allb1amount = (snapshot.value! as AnyObject).description
                self.newallb1amount = Int(self.allb1amount!)! + Int(self.b1amount!)!
                self.DBRef1.child("table/allorder/allb1amount").setValue(self.newallb1amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("b1amount").setValue(0)
            })
            let defaultPlace2 = self.DBRef1.child("table/allorder/alls1amount")
            defaultPlace2.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls1amount = (snapshot.value! as AnyObject).description
                self.newalls1amount = Int(self.alls1amount!)! + Int(self.s1amount!)!
                self.DBRef1.child("table/allorder/alls1amount").setValue(self.newalls1amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("s1amount").setValue(0)
            })
            let defaultPlace10 = self.DBRef1.child("table/allorder/alls2amount")
            defaultPlace10.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls2amount = (snapshot.value! as AnyObject).description
                self.newalls2amount = Int(self.alls2amount!)! + Int(self.s2amount!)!
                self.DBRef1.child("table/allorder/alls2amount").setValue(self.newalls2amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("s2amount").setValue(0)
            })
            let defaultPlace11 = self.DBRef1.child("table/allorder/alls3amount")
            defaultPlace11.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alls3amount = (snapshot.value! as AnyObject).description
                self.newalls3amount = Int(self.alls3amount!)! + Int(self.s3amount!)!
                self.DBRef1.child("table/allorder/alls3amount").setValue(self.newalls3amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("s3amount").setValue(0)
            })
            let defaultPlace3 = self.DBRef1.child("table/allorder/alld1amount")
            defaultPlace3.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld1amount = (snapshot.value! as AnyObject).description
                self.newalld1amount = Int(self.alld1amount!)! + Int(self.d1amount!)!
                self.DBRef1.child("table/allorder/alld1amount").setValue(self.newalld1amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("d1amount").setValue(0)
            })
            let defaultPlace5 = self.DBRef1.child("table/allorder/alld3amount")
            defaultPlace5.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld3amount = (snapshot.value! as AnyObject).description
                self.newalld3amount = Int(self.alld3amount!)! + Int(self.d3amount!)!
                self.DBRef1.child("table/allorder/alld3amount").setValue(self.newalld3amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("d3amount").setValue(0)
            })
            let defaultPlace6 = self.DBRef1.child("table/allorder/alld4amount")
            defaultPlace6.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alld4amount = (snapshot.value! as AnyObject).description
                self.newalld4amount = Int(self.alld4amount!)! + Int(self.d4amount!)!
                self.DBRef1.child("table/allorder/alld4amount").setValue(self.newalld4amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("d4amount").setValue(0)
            })
            let defaultPlace12 = self.DBRef1.child("table/allorder/alldx1amount")
            defaultPlace12.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx1amount = (snapshot.value! as AnyObject).description
                self.newalldx1amount = Int(self.alldx1amount!)! + Int(self.dx1amount!)!
                self.DBRef1.child("table/allorder/alldx1amount").setValue(self.newalldx1amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("dx1amount").setValue(0)
            })
            let defaultPlace13 = self.DBRef1.child("table/allorder/alldx2amount")
            defaultPlace13.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx2amount = (snapshot.value! as AnyObject).description
                self.newalldx2amount = Int(self.alldx2amount!)! + Int(self.dx2amount!)!
                self.DBRef1.child("table/allorder/alldx2amount").setValue(self.newalldx2amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("dx2amount").setValue(0)
            })
            let defaultPlace14 = self.DBRef1.child("table/allorder/alldx3amount")
            defaultPlace14.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx3amount = (snapshot.value! as AnyObject).description
                self.newalldx3amount = Int(self.alldx3amount!)! + Int(self.dx3amount!)!
                self.DBRef1.child("table/allorder/alldx3amount").setValue(self.newalldx3amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("dx3amount").setValue(0)
            })
            let defaultPlace15 = self.DBRef1.child("table/allorder/alldx4amount")
            defaultPlace15.observeSingleEvent(of: .value, with: { (snapshot) in
                self.alldx4amount = (snapshot.value! as AnyObject).description
                self.newalldx4amount = Int(self.alldx4amount!)! + Int(self.dx4amount!)!
                self.DBRef1.child("table/allorder/alldx4amount").setValue(self.newalldx4amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("dx4amount").setValue(0)
            })
            let defaultPlace7 = self.DBRef1.child("table/allorder/allde1amount")
            defaultPlace7.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde1amount = (snapshot.value! as AnyObject).description
                self.newallde1amount = Int(self.allde1amount!)! + Int(self.de1amount!)!
                self.DBRef1.child("table/allorder/allde1amount").setValue(self.newallde1amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("de1amount").setValue(0)
            })
            let defaultPlace8 = self.DBRef1.child("table/allorder/allde2amount")
            defaultPlace8.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde2amount = (snapshot.value! as AnyObject).description
                self.newallde2amount = Int(self.allde2amount!)! + Int(self.de2amount!)!
                self.DBRef1.child("table/allorder/allde2amount").setValue(self.newallde2amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("de2amount").setValue(0)
            })
            let defaultPlace9 = self.DBRef1.child("table/allorder/allde3amount")
            defaultPlace9.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allde3amount = (snapshot.value! as AnyObject).description
                self.newallde3amount = Int(self.allde3amount!)! + Int(self.de3amount!)!
                self.DBRef1.child("table/allorder/allde3amount").setValue(self.newallde3amount)
                self.DBRef1.child("table/order").child(self.tableNumber!).child("de3amount").setValue(0)
            })
            let defaultPlace17 = self.DBRef1.child("table/allorder/allsbamount")
            defaultPlace17.observeSingleEvent(of: .value, with: { (snapshot) in
                self.allsbamount = (snapshot.value! as AnyObject).description
                self.newallsbamount = Int(self.allsbamount!)! + self.Ssetamount
                self.DBRef1.child("table/allorder/allsbamount").setValue(self.newallsbamount)
            })
            
            //オーダーリセット
            self.DBRef1.child("table/order").child(self.tableNumber!).child("time").setValue(0)
            self.DBRef1.child("table/order").child(self.tableNumber!).child("completetime").setValue(0)
            self.DBRef1.child("table/status").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/bstatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/tbstatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/sstatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/dstatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/dxstatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/destatus").child(self.tableNumber!).setValue(0)
            self.DBRef1.child("table/setamount").child(self.tableNumber!).setValue(["bset":0,"sset":0,"bsset":0,"noice":0])
            //オーダーキーのリセット
            var hogekey : String?
            let defaultPlace16 = self.DBRef1.child("table/orderkey").child(self.tableNumber!)
            defaultPlace16.observeSingleEvent(of: .value, with: { (snapshot) in
                hogekey = (snapshot.value! as AnyObject).description
                self.DBRef1.child("indata").child(hogekey!).setValue(nil)
                self.DBRef1.child("table/orderorder").child(hogekey!).setValue(nil)
                self.DBRef1.child("table/orderkey").child(self.tableNumber!).setValue(nil)
            })
        }
        let cancelButton3 = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler: nil)
        
        alertController3.addAction(okAction3)
        alertController3.addAction(cancelButton3)
        present(alertController3,animated: true,completion: nil)
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //インスタンスを作成
        DBRef1 = Database.database().reference()
        Timer.scheduledTimer(
            timeInterval: 0.1,
            target: self,
            selector: #selector(self.amountload(_:)),
            userInfo: nil,
            repeats: false
        )
        Timer.scheduledTimer(
            timeInterval: 0.5,
            target: self,
            selector: #selector(self.status(_:)),
            userInfo: nil,
            repeats: false
        )
    }
    //初期値取得
    @objc func amountload(_ sender: Timer) {
        let defaultPlace = DBRef1.child("table/order").child(tableNumber!).child("b1amount")
        defaultPlace.observeSingleEvent(of: .value, with: { (snapshot) in self.b1amount = (snapshot.value! as AnyObject).description
            self.B1AmountLabel.text = self.b1amount!
            self.B1StepperValue.value = Double(Int(self.b1amount!)!)
        })
        let defaultPlace2 = DBRef1.child("table/order").child(tableNumber!).child("s1amount")
        defaultPlace2.observeSingleEvent(of: .value, with: { (snapshot) in self.s1amount = (snapshot.value! as AnyObject).description
            self.S1AmountLabel.text = self.s1amount!
            self.S1StepperValue.value = Double(Int(self.s1amount!)!)
        })
        let defaultPlace20 = DBRef1.child("table/order").child(tableNumber!).child("s2amount")
        defaultPlace20.observeSingleEvent(of: .value, with: { (snapshot) in self.s2amount = (snapshot.value! as AnyObject).description
            self.S2AmountLabel.text = self.s2amount!
            self.S2StepperValue.value = Double(Int(self.s2amount!)!)
        })
        let defaultPlace21 = DBRef1.child("table/order").child(tableNumber!).child("s3amount")
        defaultPlace21.observeSingleEvent(of: .value, with: { (snapshot) in self.s3amount = (snapshot.value! as AnyObject).description
            self.S3AmountLabel.text = self.s3amount!
            self.S3StepperValue.value = Double(Int(self.s3amount!)!)
        })
        let defaultPlace3 = DBRef1.child("table/order").child(tableNumber!).child("d1amount")
        defaultPlace3.observeSingleEvent(of: .value, with: { (snapshot) in self.d1amount = (snapshot.value! as AnyObject).description
            self.D1AmountLabel.text = self.d1amount!
            self.D1StepperValue.value = Double(Int(self.d1amount!)!)
        })
        let defaultPlace5 = DBRef1.child("table/order").child(tableNumber!).child("d3amount")
        defaultPlace5.observeSingleEvent(of: .value, with: { (snapshot) in self.d3amount = (snapshot.value! as AnyObject).description
            self.D3AmountLabel.text = self.d3amount!
            self.D3StepperValue.value = Double(Int(self.d3amount!)!)
        })
        let defaultPlace6 = DBRef1.child("table/order").child(tableNumber!).child("d4amount")
        defaultPlace6.observeSingleEvent(of: .value, with: { (snapshot) in self.d4amount = (snapshot.value! as AnyObject).description
            self.D4AmountLabel.text = self.d4amount!
            self.D4StepperValue.value = Double(Int(self.d4amount!)!)
        })
        let defaultPlace24 = DBRef1.child("table/order").child(tableNumber!).child("dx1amount")
        defaultPlace24.observeSingleEvent(of: .value, with: { (snapshot) in self.dx1amount = (snapshot.value! as AnyObject).description
            self.DX1AmountLabel.text = self.dx1amount!
            self.DX1StepperValue.value = Double(Int(self.dx1amount!)!)
        })
        let defaultPlace25 = DBRef1.child("table/order").child(tableNumber!).child("dx2amount")
        defaultPlace25.observeSingleEvent(of: .value, with: { (snapshot) in self.dx2amount = (snapshot.value! as AnyObject).description
            self.DX2AmountLabel.text = self.dx2amount!
            self.DX2StepperValue.value = Double(Int(self.dx2amount!)!)
        })
        let defaultPlace22 = DBRef1.child("table/order").child(tableNumber!).child("dx3amount")
        defaultPlace22.observeSingleEvent(of: .value, with: { (snapshot) in self.dx3amount = (snapshot.value! as AnyObject).description
            self.DX3AmountLabel.text = self.dx3amount!
            self.DX3StepperValue.value = Double(Int(self.dx3amount!)!)
        })
        let defaultPlace23 = DBRef1.child("table/order").child(tableNumber!).child("dx4amount")
        defaultPlace23.observeSingleEvent(of: .value, with: { (snapshot) in self.dx4amount = (snapshot.value! as AnyObject).description
            self.DX4AmountLabel.text = self.dx4amount!
            self.DX4StepperValue.value = Double(Int(self.dx4amount!)!)
        })
        let defaultPlace7 = DBRef1.child("table/order").child(tableNumber!).child("de1amount")
        defaultPlace7.observeSingleEvent(of: .value, with: { (snapshot) in self.de1amount = (snapshot.value! as AnyObject).description
            self.De1AmountLabel.text = self.de1amount!
            self.De1StepperValue.value = Double(Int(self.de1amount!)!)
        })
        let defaultPlace8 = DBRef1.child("table/order").child(tableNumber!).child("de2amount")
        defaultPlace8.observeSingleEvent(of: .value, with: { (snapshot) in self.de2amount = (snapshot.value! as AnyObject).description
            self.De2AmountLabel.text = self.de2amount!
            self.De2StepperValue.value = Double(Int(self.de2amount!)!)
        })
        let defaultPlace9 = DBRef1.child("table/order").child(tableNumber!).child("de3amount")
        defaultPlace9.observeSingleEvent(of: .value, with: { (snapshot) in self.de3amount = (snapshot.value! as AnyObject).description
            self.De3AmountLabel.text = self.de3amount!
            self.De3StepperValue.value = Double(Int(self.de3amount!)!)
        })
        
        //全食数の取得
        let defaultPlace10 = self.DBRef1.child("table/allorder/allb1amount")
        defaultPlace10.observe(.value) { (snap: DataSnapshot) in
            self.AllB1AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace12 = self.DBRef1.child("table/allorder/alls1amount")
        defaultPlace12.observe(.value) { (snap: DataSnapshot) in
            self.AllS1AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace26 = self.DBRef1.child("table/allorder/alls2amount")
        defaultPlace26.observe(.value) { (snap: DataSnapshot) in
            self.AllS2AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace27 = self.DBRef1.child("table/allorder/alls3amount")
        defaultPlace27.observe(.value) { (snap: DataSnapshot) in
            self.AllS3AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace13 = self.DBRef1.child("table/allorder/alld1amount")
        defaultPlace13.observe(.value) { (snap: DataSnapshot) in
            self.AllD1AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace15 = self.DBRef1.child("table/allorder/alld3amount")
        defaultPlace15.observe(.value) { (snap: DataSnapshot) in
            self.AllD3AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace16 = self.DBRef1.child("table/allorder/alld4amount")
        defaultPlace16.observe(.value) { (snap: DataSnapshot) in
            self.AllD4AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace28 = self.DBRef1.child("table/allorder/alldx1amount")
        defaultPlace28.observe(.value) { (snap: DataSnapshot) in
            self.AllDX1AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace29 = self.DBRef1.child("table/allorder/alldx2amount")
        defaultPlace29.observe(.value) { (snap: DataSnapshot) in
            self.AllDX2AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace30 = self.DBRef1.child("table/allorder/alldx3amount")
        defaultPlace30.observe(.value) { (snap: DataSnapshot) in
            self.AllDX3AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace31 = self.DBRef1.child("table/allorder/alldx4amount")
        defaultPlace31.observe(.value) { (snap: DataSnapshot) in
            self.AllDX4AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace17 = self.DBRef1.child("table/allorder/allde1amount")
        defaultPlace17.observe(.value) { (snap: DataSnapshot) in
            self.AllDe1AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace18 = self.DBRef1.child("table/allorder/allde2amount")
        defaultPlace18.observe(.value) { (snap: DataSnapshot) in
            self.AllDe2AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace19 = self.DBRef1.child("table/allorder/allde3amount")
        defaultPlace19.observe(.value) { (snap: DataSnapshot) in
            self.AllDe3AmountLabel.text = (snap.value! as AnyObject).description
        }
        let defaultPlace32 = self.DBRef1.child("table/allorder/allsbamount")
        defaultPlace32.observe(.value) { (snap: DataSnapshot) in
            self.AllSBAmountLabel.text = (snap.value! as AnyObject).description
        }
    }
    
    @objc func status(_ sender: Timer) {
        let defaultPlace = DBRef1.child("table/bstatus").child(self.tableNumber!)
        defaultPlace.observe(.value) { (snap: DataSnapshot) in self.bstatus = (snap.value! as AnyObject).description
            if Int(self.bstatus!) == 1{
                self.BStatus.backgroundColor = UIColor.magenta
            }else if Int(self.bstatus!) == 2{
                self.BStatus.backgroundColor = UIColor.cyan
            }else{
                self.BStatus.backgroundColor = UIColor.white
            }
        }
        let defaultPlace1 = DBRef1.child("table/sstatus").child(self.tableNumber!)
        defaultPlace1.observe(.value) { (snap: DataSnapshot) in self.sstatus = (snap.value! as AnyObject).description
            if Int(self.sstatus!) == 1{
                self.SStatus.backgroundColor = UIColor.magenta
            }else if Int(self.sstatus!) == 2{
                self.SStatus.backgroundColor = UIColor.cyan
            }else{
                self.SStatus.backgroundColor = UIColor.white
            }
        }
        let defaultPlace2 = DBRef1.child("table/dstatus").child(self.tableNumber!)
        defaultPlace2.observe(.value) { (snap: DataSnapshot) in self.dstatus = (snap.value! as AnyObject).description
            if Int(self.dstatus!) == 1{
                self.DStatus.backgroundColor = UIColor.magenta
            }else if Int(self.dstatus!) == 2{
                self.DStatus.backgroundColor = UIColor.cyan
            }else{
                self.DStatus.backgroundColor = UIColor.white
            }
        }
        let defaultPlace4 = DBRef1.child("table/dxstatus").child(self.tableNumber!)
        defaultPlace4.observe(.value) { (snap: DataSnapshot) in self.dxstatus = (snap.value! as AnyObject).description
            if Int(self.dxstatus!) == 1{
                self.DXStatus.backgroundColor = UIColor.magenta
            }else if Int(self.dxstatus!) == 2{
                self.DXStatus.backgroundColor = UIColor.cyan
            }else{
                self.DXStatus.backgroundColor = UIColor.white
            }
        }
        let defaultPlace3 = DBRef1.child("table/destatus").child(self.tableNumber!)
        defaultPlace3.observe(.value) { (snap: DataSnapshot) in self.destatus = (snap.value! as AnyObject).description
            if Int(self.destatus!) == 1{
                self.DeStatus.backgroundColor = UIColor.magenta
            }else if Int(self.destatus!) == 2{
                self.DeStatus.backgroundColor = UIColor.cyan
            }else{
                self.DeStatus.backgroundColor = UIColor.white
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
