//
//  GreenViewController.swift
//  findNumber
//
//  Created by Savchuk Vadym on 18.04.2022.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func goToRoot(_ sender: Any) {
//        self.navigationController?.popToRootViewController(animated: true)
        
        if let viewControllers = self.navigationController?.viewControllers{
            for vc in viewControllers{
                if vc is YellowViewController{
                    self.navigationController?.popToViewController(vc, animated: true)
                }
            }
            
        }
    }
}
