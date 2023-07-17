//
//  ViewController.swift
//  HomeworkUIControls
//
//  Created by LinhMAC on 16/07/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diamond: UIImageView!
    @IBOutlet weak var rickLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let widthScreen = self.view.frame.width
        let heightScreen = self.view.frame.height
        //        rickLable.layer.borderWidth = 100
        //        rickLable.layer.backgroundColor = UIColor.black.cgColor
        rickLable.frame = CGRect(x: 100 , y: heightScreen, width: widthScreen, height: 100)
        rickLable.textColor = UIColor.white
        rickLable.text = "i am rich ".capitalized
        rickLable.textAlignment = .center
        rickLable.center.x = self.view.center.x
        rickLable.font = rickLable.font.withSize(50)
        diamond.image = UIImage(named: "IamRich")
        diamond.frame = CGRect(x: 0, y: 0, width: widthScreen, height: heightScreen)
        diamond.alpha = 0
        UIView.animate(withDuration: 5.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.diamond.alpha = 1.0
            self.rickLable.frame.origin.y = self.view.frame.maxY - 250
        }, completion: nil)
    }
}
