//
//  ViewController.swift
//  PushView1
//
//  Created by NguyenDucBien on 11/25/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image!.alpha = 0
        text!.alpha = 0
        name!.alpha = 0
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.image!.alpha = 1
        }) {(finished) in
            UIView.animateWithDuration(3, animations: {
                self.text!.center = CGPointMake(self.image!.center.x, 100)
                self.text!.alpha = 1
            }) {(finished) in
                UIView.animateWithDuration(3, animations: {
                    self.name!.center = CGPointMake(self.name!.center.x, 500)
                    self.name!.alpha = 1
                }) {(finished) in
                    
                    let mp3 = self.storyboard?.instantiateViewControllerWithIdentifier("Login") as! LoginMp3
                    self.navigationController?.pushViewController(mp3, animated: true)
                    
                    
                    
                }
                
                
            }
            
            
        }
    }
}
