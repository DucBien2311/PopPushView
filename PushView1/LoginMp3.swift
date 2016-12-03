//
//  LoginMp3.swift
//  PushView1
//
//  Created by NguyenDucBien on 11/25/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class LoginMp3: UIViewController {
    
    @IBOutlet weak var tf_user: UITextField!
    
    @IBOutlet weak var tf_password: UITextField!

    @IBOutlet weak var lbl_thongbao: UILabel!
    var accountList = ["ducbien":"2311", "lanhuong" : "2309"]
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func btn_DangNhap(sender: AnyObject) {
        setLogin()
        

  
    }
    func setLogin(){
        
        
        if let password = accountList[tf_user.text!]
        {
            if password == tf_password.text
            {
             
                lbl_thongbao.text = "Successful longon!"
                let hamtinhtoan = self.storyboard?.instantiateViewControllerWithIdentifier("math") as! tinhtoan
                self.navigationController?.pushViewController(hamtinhtoan, animated: true)
  
            }
                
            else
            {
                lbl_thongbao.text = "Wrong password :("
            }
            
        }
        else
        {
            lbl_thongbao.text = "The account doesn't exits :("
        }
    }

}
