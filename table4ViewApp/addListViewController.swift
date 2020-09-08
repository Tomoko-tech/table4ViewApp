//
//  addListViewController.swift
//  table4ViewApp
//
//  Created by Takahashi Tomoko on 2020/09/08.
//  Copyright © 2020 takatomo.com. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var addText: UITextField!
    var array = [String]()
    
    @IBAction func addButton(_ sender: Any) {
        
        if UserDefaults.standard.object(forKey: "add") != nil {
        array = UserDefaults.standard.object(forKey: "add") as! [String]
        }
        
        array.append(addText.text!)
        
        //アプリの中に一時的に保存
        UserDefaults.standard.set(array, forKey: "add")
        //ナビゲーションコントローラで画面を戻る
        self.navigationController?.popViewController(animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
