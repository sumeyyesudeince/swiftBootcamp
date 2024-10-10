//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Sude İnce on 8.10.2024.
//

import Foundation

class KisiKayitViewModel {
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String, kisi_tel:String) {
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
}
