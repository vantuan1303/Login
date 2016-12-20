//
//  ViewController.swift
//  DangNhap
//
//  Created by Nguyen Van Tuan on 12/18/16.
//  Copyright © 2016 MyProjects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_pass: UITextField!
    @IBOutlet weak var lbl_message: UILabel!
    
    var users = ["Tuan" : "123", "Duc" : "456", "Sang" : "789"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func acc_login(sender: UIButton) {
        if let password = users[txt_name.text!]
        {
            if password == txt_pass.text {
                lbl_message.text = String("Đăng nhập thành công")
            }
            else{
                lbl_message.text = String("Sai mật khẩu")
            }
        }else{
            lbl_message.text = String("Tài khoản không tồn tại trong hệ thống")
        }
    }
    
    @IBAction func acc_add(sender: UIButton) {
        if let _ = users[txt_name.text!] {
            lbl_message.text = String("Trùng tên")
        }else{
            users[txt_name.text!] = txt_pass.text
            lbl_message.text = String("Thêm thành công")
        }
    }
    
    @IBAction func acc_edit(sender: UIButton) {
        if let _ = users[txt_name.text!] {
            users[txt_name.text!] = txt_pass.text
            lbl_message.text = String("Sửa thành công")
        }else{
            lbl_message.text = String("Tài khoản không tồn tại")
        }
    }
    
    @IBAction func acc_remove(sender: UIButton) {
        if let _ = users[txt_name.text!] {
            users.removeValueForKey(txt_name.text!)
            lbl_message.text = String("Xoá thành công")
        }else{
            lbl_message.text = String("Tài khoản không tồn tại")
        }
    }
    
    
    


}

