//
//  CustomCollectionViewCell.swift
//  TableViewCollectionView
//
//  Created by Vinicius Cleim on 08/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    
    @IBOutlet weak var carImageView: UIImageView!
    
   

    
    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleToFill
        
    }
    
    func setupCell(nameImage: String){
        self.carImageView.image = UIImage(named: nameImage)
    }

}
