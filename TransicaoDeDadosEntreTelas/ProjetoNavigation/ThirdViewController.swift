//
//  ThirdViewController.swift
//  ProjetoNavigation
//
//  Created by Vinicius Cleim on 11/10/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "FourthViewController", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
    }
    

}
