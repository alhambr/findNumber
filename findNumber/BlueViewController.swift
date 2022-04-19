//
//  BlueViewController.swift
//  findNumber
//
//  Created by Savchuk Vadym on 18.04.2022.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = textForLabel
    }
    
    @IBAction func goToGreenController(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc =  storyboard.instantiateViewController(identifier: "greenVC")
        vc.title = "зеленый"
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
