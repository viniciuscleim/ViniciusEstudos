//
//  CarTableViewCell.swift
//  TableViewCollectionView
//
//  Created by Vinicius Cleim on 07/11/22.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var tittleLabel: UILabel!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = ["car1","car2","car3","car4","car5","car6"]
    
    
    static let identifier: String = "CarTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
        
            
            // Initialization code
        }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
      }
    
    
    }
extension CarTableViewCell: UICollectionViewDelegate {
    
}
    
extension CarTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarTableViewCell.identifier, for: indexPath) as?
        CarTableViewCell
        cell?.collectionView
    }
    
    
}

extension CarTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
}

    
    
    
    
