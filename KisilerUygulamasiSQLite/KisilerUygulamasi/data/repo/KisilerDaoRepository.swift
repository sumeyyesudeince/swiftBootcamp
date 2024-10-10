//
//  KisilerDaoRepository.swift
//  KisilerUygulamasi
//
//  Created by Sude İnce on 8.10.2024.
//

import Foundation
import RxSwift

class KisilerDaoRepository {
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(kisi_ad:String, kisi_tel:String) {
        print("Kişi Kaydet: \(kisi_ad) - \(kisi_tel)")
    }
    func guncelle(kisi_id:Int,kisi_ad:String, kisi_tel:String) {
        print("Kişi Güncelle: \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    func sil(kisi_id:Int){
        print("Kişi sil: \(kisi_id)")
    }
    func ara(aramaKelimesi:String){
        print("Kişi ara : \(aramaKelimesi)")
    }
    func kisileriYukle() {
        db?.open()
        var liste = [Kisiler]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while rs.next() {
                let kisi = Kisiler(kisi_id: Int(rs.int(forColumn: "kisi_id"))!,
                                   kisi_ad: rs.string(forColumn: "kisi_ad")!,
                                   kisi_tel: rs.string(forColumn: "kisi_tel")!)
                liste.append(kisi)
            }
            kisilerListesi.onNext(liste)
            
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
    }

}
