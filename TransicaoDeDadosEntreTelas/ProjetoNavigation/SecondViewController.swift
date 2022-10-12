//
//  SecondViewController.swift
//  ProjetoNavigation
//
//  Created by Vinicius Cleim on 11/10/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "ThirdViewController", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
    }
    

}
