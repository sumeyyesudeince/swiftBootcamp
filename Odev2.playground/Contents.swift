import UIKit

// Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız. Mile = Km x 0.621

func kmToMiles(km: Double) -> Double{
    let mile = km * 0.621
    return mile
}

let sonuc = kmToMiles(km: 38)
print("38 km \(sonuc) mile eşittir.")


// Kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yazınız.
func alan(kenar1: Int, kenar2: Int) -> Int {
    let alan = kenar1 * kenar2
    return alan
}

let sonuc2 = alan(kenar1: 35, kenar2: 23)
print("Alan: \(sonuc2) birim kare")


// Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.

func faktoriyel(sayi: Int) -> Int{
    if sayi == 0{
        return 1
    }
    
    var sonuc3 = 1
    for i in 1...sayi{
        sonuc3 *= i
    }
    return sonuc3
}

let sonuc3 = faktoriyel(sayi: 4)
print("4'ün faktöriyeli \(sonuc3)")


// Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren bir metod yazınız.

func eHarfiBulma (kelime: String) -> Int {
    var sayac = 0
    for harf in kelime {
        if harf == "e" || harf == "E" {
            sayac += 1
        }
    }
    return sayac
    
}

let sonuc4 = eHarfiBulma(kelime: "Elbise")
print("Elbise kelimesinde \(sonuc4) tane e harfi vardır.")


// Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod yazınız.

func icAciyiBul(kenarSayisi: Int) -> Double? {
    if kenarSayisi < 3 {
        return nil
    }
    let icAci = Double((kenarSayisi - 2) * 180 )/Double(kenarSayisi)
    return icAci
    
}

if let sonuc5 = icAciyiBul(kenarSayisi: 5) {
    print("Kenar sayısı verilen şeklin iç açısı = \(sonuc5)")
}else{
    print("Geçersiz kenar sayısı girildi")
}

/* Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod
 yazınız.
 • 1 günde 8 saat çalışılabilir.
 • Çalışma saat ücreti : 40 ₺
 • Mesai saat ücreti : 80 ₺
 • 150 saat üzeri mesai sayılır.*/

func maasHesabi (gunSayisi: Int) -> Double {
    let calismaSaati = 8.0
    let saatUcreti = 40.0
    let mesaiUcreti = 80.0
    let toplamCalismaSaati = Double(gunSayisi) * calismaSaati
    var maas = toplamCalismaSaati * saatUcreti
    
    if toplamCalismaSaati > 150 {
        let mesaiSaati = toplamCalismaSaati - 150
        maas += mesaiSaati * mesaiUcreti
    }
    return maas
}


let sonuc6 = maasHesabi(gunSayisi: 30)
print("30 gün çalışıldığında alınacak maaş: \(sonuc6)")


/*Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu
 yazınız.
 • 1 saat = 50 ₺
 • 1 saat aşımından sonra her 1 saat , 10 ₺’dir. */

func otoparkUcretiHesaplama (sure: Int) -> Double{
    let ilkSaatUcreti = 50.0
    let saatBasiUcret = 10.0
    
    if sure <= 1 {
        return ilkSaatUcreti
    } else {
        let ekSaatSayisi = sure - 1
        let toplamUcret = ilkSaatUcreti + (Double(ekSaatSayisi) * saatBasiUcret)
        return toplamUcret
    }
}

let sonuc7 = otoparkUcretiHesaplama(sure: 6)
print("Otopark ücreti: \(sonuc7)")
                                           
                                           
                                        
