//
//  ViewController.swift
//  ExerciciosTransicaoDeDados
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    
    @IBOutlet weak var professionTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        let vini = Pessoa(name: nameTextField.text ?? "", lastName: lastNameTextField.text ?? "", age: ageTextField.text ?? "" , profession: professionTextField.text ?? "")
        
        vc?.vini = vini
        
        navigationController?.pushViewController(vc ?? UIViewController(), animated: false)
        
    }
    

}

struct Pessoa {
    var name: String
    var lastName: String
    var age: String
    var profession: String
}

