//
//  YellowViewController.swift
//  findNumber
//
//  Created by Savchuk Vadym on 18.04.2022.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func goToBlueController(_ sender: Any) {
        
        performSegue(withIdentifier: "goToBlue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
            case "goToBlue":
            if let blueVC = segue.destination as? BlueViewController{
                blueVC.textForLabel = "Test string"
            }
            default:
                break
        }
    }
}
