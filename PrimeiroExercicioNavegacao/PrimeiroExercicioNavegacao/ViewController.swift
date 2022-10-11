//
//  ViewController.swift
//  PrimeiroExercicioNavegacao
//
//  Created by Vinicius Cleim on 10/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // primeiroCommit
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goTela02" , sender: nil)
    }
    
    
}

