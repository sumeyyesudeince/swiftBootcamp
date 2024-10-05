import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş init metodu çalıştı")
    }
    
    init(renk:String, hiz:Int, calisiyorMu:Bool){
        self.renk = renk // self: bulunduğu sınıfı temsil ediyor
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu // shadowing : gölgeleme
        
    }
    
    func calistir(){ // Side effect
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur() {
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("---------------")
        print("Renk           : \(renk!)")
        print("Hız            : \(hiz!)")
        print("Çalışıyor mu   : \(calisiyorMu!)")
    }
}

// Nesne Oluşturma

var bmw = Araba(renk: "Kırmızı", hiz: 130, calisiyorMu: false)

// Değer Atama
// bmw.renk = "Kırmızı"
// bmw.hiz = 130
// bmw.calisiyorMu = true

// Değer Okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 80)
bmw.bilgiAl()

var porsche = Araba()

porsche.renk = "Lacivert"
porsche.hiz = 230
porsche.calisiyorMu = false


porsche.bilgiAl()
porsche.durdur()
porsche.bilgiAl()
porsche.calistir()
porsche.bilgiAl()


class Fonksiyonlar {
    // Geri dönüş değeri olmayan (void)
    func selamla(){
        let sonuc = "Merhaba Sude"
        print(sonuc)
    }
    // Geri dönüş değeri olmayan (void)
    func selamla2() -> String {
        let sonuc = "Merhaba Sude"
        return sonuc
    }
    
    // parametre
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi:Int, sayi2:Int) -> Int {
        let toplam = sayi + sayi2
        return toplam
    
        
    }
    
    // Overloading
    func carpma(sayi:Int, sayi2:Int) {
        print("Çarpma: \(sayi * sayi2)")
        
    }
    
    func carpma(sayi:Double, sayi2:Double) {
        print("Çarpma: \(sayi * sayi2)")
        
    }
    
    func carpma(sayi:Int, sayi2:Int, isim:String) {
        print("Çarpma: \(sayi * sayi2) - İşlemi yapan : \(isim)")
        
    }
    
}
let f = Fonksiyonlar()

f.selamla()

let gelenSonuc = f.selamla2()
print("Gelen Sonuç: \(gelenSonuc)")

f.selamla3(isim: "Şule")

let gelenToplam = f.toplama(sayi: 10, sayi2: 30)
print("Gelen Toplam: \(gelenToplam)")


f.carpma(sayi: 10, sayi2: 20)

f.carpma(sayi: 50, sayi2: 30, isim: "Sude")


// Static Değişkenler ve Metodlar

class ASinifi {
    static var x = 10
    
    static func metod(){
        print("Metod çalıştı")
    }
}

/*let a = ASinifi()

print(a.x)

a.metod() */

print(ASinifi.x) // Sanal nesne

ASinifi.metod()


// Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet:Int) {
    switch boyut {
    case .kucuk: print("Fiyat  : \(adet * 13) ₺")
    case .orta:  print("Fiyat  : \(adet * 24) ₺")
    case .buyuk: print("Fiyat  : \(adet * 45) ₺")
    }
}

ucretHesapla(boyut: .orta, adet: 100)


// Composition

class Kategoriler{
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler{
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String){
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler{
        var film_id:Int?
        var film_ad:String?
        var film_yil:Int?
        var kategori:Kategoriler?
        var yonetmen:Yonetmenler?
        
    init(film_id:Int, film_ad:String, film_yil:Int,  kategori:Kategoriler, yonetmen:Yonetmenler){
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}


let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1 )

print("Film id      : \(f1.film_id!)")
print("Film ad      : \(f1.film_ad!)")
print("Film yıl     : \(f1.film_yil!)")
print("Film kategori: \(f1.kategori!.kategori_ad!)")
print("Film yönetmen: \(f1.yonetmen!.yonetmen_ad!)")
