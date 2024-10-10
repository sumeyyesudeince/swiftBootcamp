//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Sude İnce on 8.10.2024.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
    
}
