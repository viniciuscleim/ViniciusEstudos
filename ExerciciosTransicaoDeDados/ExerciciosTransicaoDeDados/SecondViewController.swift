//
//  SecondViewController.swift
//  ExerciciosTransicaoDeDados
//
//  Created by Vinicius Cleim on 18/10/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBOutlet weak var professionLabel: UILabel!
    
    var vini: Pessoa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = vini?.name
        lastNameLabel.text = vini?.lastName
        ageLabel.text = vini?.age
        professionLabel.text = vini?.profession

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
