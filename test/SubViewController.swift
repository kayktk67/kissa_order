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
    @IBOutlet weak var D1AmountLabel: UILabel!
    @IBOutlet weak var De1AmountLabel: UILabel!
    @IBOutlet weak var B1StepperValue: UIStepper!
    @IBOutlet weak var S1StepperValue: UIStepper!
    @IBOutlet weak var D1StepperValue: UIStepper!
    @IBOutlet weak var De1StepperValue: UIStepper!
    
    @IBOutlet weak var tableNumberLabel: UILabel!
    
    var tableNumber : String?
    // インスタンス変数
    var DBRef1:DatabaseReference!
    var status2 : String?
    var intstatus2 : Int?
    var b1amount : String?
    var s1amount : String?
    var d1amount : String?
    var de1amount : String?
    var hoge : String?

    
    
    //Stepper
    @IBAction func B1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        B1AmountLabel.text = "\(Amount)"
    }
    @IBAction func S1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        S1AmountLabel.text = "\(Amount)"
    }
    @IBAction func D1AmountLabel(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        D1AmountLabel.text = "\(Amount)"
    }
    @IBAction func De1Stepper(_ sender: UIStepper) {
        let Amount = Int(sender.value)
        De1AmountLabel.text = "\(Amount)"
    }
    
    
    //各ボタン機能
    @IBAction func add(_ sender: Any) {
        //オーダーの入力
        let b1amount: Int = Int(B1AmountLabel.text!)!
        let s1amount: Int = Int(S1AmountLabel.text!)!
        let d1amount: Int = Int(D1AmountLabel.text!)!
        let de1amount: Int = Int(De1AmountLabel.text!)!
        DBRef1.child("table/order").child(tableNumber!).setValue(["b1amount":b1amount,"s1amount":s1amount,"d1amount":d1amount,"de1amount":de1amount, "time":ServerValue.timestamp()])
        let key = DBRef1.child("table/orderorder").childByAutoId().key;
        DBRef1.child("table/orderorder").child(key).setValue(tableNumber!)
        DBRef1.child("table/orderkey").child(tableNumber!).setValue(key)
        
        //新規テーブルの区別
        //let defaultPlace = DBRef.child("table/status").child(tableNumber!)
        //defaultPlace.observe(.value) { (snap: DataSnapshot) in self.status2 = (snap.value! as AnyObject).description
            //self.intstatus2 = Int(self.status2!)
            //if self.intstatus2! == 0{
                self.DBRef1.child("table/status").child(self.tableNumber!).setValue(1)
                //self.DBRef.child("data").childByAutoId().setValue(["b1amount":b1amount,"s1amount":s1amount,"d1amount":d1amount,"de1amount":de1amount])
        //    }
        //}
    }
    
    @IBAction func complete(_ sender: Any) {
        DBRef1.child("table/status").child(self.tableNumber!).setValue(3)
        var hogekey : String?
        let defaultPlace = DBRef1.child("table/orderkey").child(tableNumber!)
        defaultPlace.observeSingleEvent(of: .value, with: { (snapshot) in
            hogekey = (snapshot.value! as AnyObject).description
            self.DBRef1.child("table/orderorder").child(hogekey!).setValue(nil)
            self.DBRef1.child("table/orderkey").child(self.tableNumber!).setValue(nil)
        })
    }
    
    @IBAction func dlete(_ sender: Any) {
        B1AmountLabel.text = "0"
        S1AmountLabel.text = "0"
        D1AmountLabel.text = "0"
        De1AmountLabel.text = "0"
        B1StepperValue.value = 0
        S1StepperValue.value = 0
        D1StepperValue.value = 0
        De1StepperValue.value = 0
        self.DBRef1.child("table/order").child(self.tableNumber!).setValue(["b1amount":0,"s1amount":0,"d1amount":0,"de1amount":0,"time":0])
        self.DBRef1.child("table/status").child(self.tableNumber!).setValue(0)
        var hogekey : String?
        let defaultPlace = DBRef1.child("table/orderkey").child(tableNumber!)
        defaultPlace.observeSingleEvent(of: .value, with: { (snapshot) in
            hogekey = (snapshot.value! as AnyObject).description
            self.DBRef1.child("table/orderorder").child(hogekey!).setValue(nil)
            self.DBRef1.child("table/orderkey").child(self.tableNumber!).setValue(nil)
        })
}
    
    @IBAction func load(_ sender: Any) {
        let defaultPlace = DBRef1.child("table/order").child(tableNumber!).child("b1amount")
        defaultPlace.observe(.value) { (snap: DataSnapshot) in self.b1amount = (snap.value! as AnyObject).description
            self.B1AmountLabel.text = self.b1amount!
            self.B1StepperValue.value = Double(Int(self.b1amount!)!)
        }
        let defaultPlace1 = DBRef1.child("table/order").child(tableNumber!).child("s1amount")
        defaultPlace1.observe(.value) { (snap: DataSnapshot) in self.s1amount = (snap.value! as AnyObject).description
            self.S1AmountLabel.text = self.s1amount!
            self.S1StepperValue.value = Double(Int(self.s1amount!)!)
        }
        let defaultPlace2 = DBRef1.child("table/order").child(tableNumber!).child("d1amount")
        defaultPlace2.observe(.value) { (snap: DataSnapshot) in self.d1amount = (snap.value! as AnyObject).description
            self.D1AmountLabel.text = self.d1amount!
            self.D1StepperValue.value = Double(Int(self.d1amount!)!)
        }
        let defaultPlace3 = DBRef1.child("table/order").child(tableNumber!).child("de1amount")
        defaultPlace3.observe(.value) { (snap: DataSnapshot) in self.de1amount = (snap.value! as AnyObject).description
            self.De1AmountLabel.text = self.de1amount!
            self.De1StepperValue.value = Double(Int(self.de1amount!)!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //インスタンスを作成
        DBRef1 = Database.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
