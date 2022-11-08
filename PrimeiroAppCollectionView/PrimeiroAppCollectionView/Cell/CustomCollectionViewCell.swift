//
//  CustomCollectionViewCell.swift
//  PrimeiroAppCollectionView
//
//  Created by Vinicius Cleim on 07/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }


    
    // ciclo de vida da cell, podendo comprar com o viewDidLoad da ViewController
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
        
    }

}
