//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Sude İnce on 5.10.2024.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var LabelAnasayfa: UILabel!
    // Leading - Left - Start
    // Trailing - Right - End
    
    
    override func viewDidLoad() { // Uygulama ilk açıldığında 1 kere çalışır
        super.viewDidLoad()
        LabelAnasayfa.text = "Hoş Geldin"
        print("viewDidLoad Çalıştı")
   
    }
    
    override func viewWillAppear(_ animated: Bool) { //Sayfa her göründüğünde çalışır.
        print("viewWillAppear çalıştı")
    }
    
    override func viewDidDisappear(_ animated: Bool) { // Sayfa görünmez olduğunda çalışır
        print("viewDidDisappear çalıştı")
    }
    

    @IBAction func buttonYap(_ sender: Any) {
        LabelAnasayfa.text = "Merhaba"
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Sude", yas: 24, boy: 1.63, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare modu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis çalıştı")
            
            if let veri = sender as? Kisiler {
                
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add seçildi")
    }
    
    @IBAction func buttonEdit(_ sender: Any) {
        print("Edit seçildi")
    }
}

