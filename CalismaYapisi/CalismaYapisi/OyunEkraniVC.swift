//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by Sude İnce on 5.10.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            print("---- OyunEkranıVC ----")
            print("Kişi adı    : \(k.ad!)")
            print("Kişi yaşı   : \(k.yas!)")
            print("Kişi boyu   : \(k.boy!)")
            print("Kişi bekar  : \(k.bekar!)")
        }
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true) // Bir önceki sayfaya dönüşü böyle yapabiliriz.
    }
    
}
