//
//  ViewController.swift
//  ProjetoNavigation
//
//  Created by Vinicius Cleim on 11/10/22.
//

import UIKit





class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    

    @IBOutlet weak var sobrenomeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.name = "\(nameTextField.text ?? "") \(sobrenomeTextField.text ?? "")"
     
        // present(vc ?? UIViewController(), animated: true)
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
        
    }
    


}

