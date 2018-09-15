//
//  ViewController.swift
//  test
//
//  Created by Kei Kawamura on 2018/09/03.
//  Copyright © 2018年 Kei Kawamura. All rights reserved.
//

import UIKit
import Foundation
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var TableView: UITableView!
    let number = ["001","002","003","004","005","006","007","008","009","010"]
    var tablenumber : String?
    // インスタンス変数
    var DBRef:DatabaseReference!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = "Table" + number[indexPath.row]
        //満席表示
        var status1 : String?
        var intstatus1 : Int?
        let defaultPlace = DBRef.child("table/status").child(number[indexPath.row])
        defaultPlace.observe(.value) { (snap: DataSnapshot) in status1 = (snap.value! as AnyObject).description
        intstatus1 = Int(status1!)
            if intstatus1! == 0{
                cell.contentView.backgroundColor = UIColor.clear
            }else if intstatus1! == 1{
                cell.contentView.backgroundColor = UIColor.yellow
            }else if intstatus1! == 2{
                cell.contentView.backgroundColor = UIColor.magenta
            }else if intstatus1! == 3{
                cell.contentView.backgroundColor = UIColor.red
            }else if intstatus1! == 4{
                cell.contentView.backgroundColor = UIColor.cyan
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tablenumber = number[indexPath.row]
        performSegue(withIdentifier:"tonextview", sender: nil)
        tableView.deselectRow(at: indexPath, animated:true)
    }
    
    //次のビューに渡す値を設定
    override func  prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SubViewController
        let _ = nextVC.view
        nextVC.tableNumberLabel.text = "Table\(tablenumber!)"
        nextVC.tableNumber = "\(tablenumber!)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //インスタンスを作成
        DBRef = Database.database().reference()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
