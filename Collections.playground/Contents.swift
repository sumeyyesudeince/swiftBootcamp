import UIKit

// Array Kullanmı
var numaralar = [10,20,30]
var meyveler = [String]()

// Veri ekleme

meyveler.append("Elma")
meyveler.append("Muz")
meyveler.append("Kiraz")

print(meyveler)


// Güncelleme
meyveler[0] = "Yeni elma"
print(meyveler)

// Insert
meyveler.insert("Portakal", at: 1)
print(meyveler)

// Veri okuma
print(meyveler[1])

print("Boyut: \(meyveler.count)")
print("Boş kontrol: \(meyveler.isEmpty)")

for (indeks, meyve) in meyveler.enumerated() {
    print("\(indeks). ->  \(meyve)")
}

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)


// Nesne Tabanlı
class Ogrenciler {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init (no:Int,ad:String,sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
        
    }
}

var o1 = Ogrenciler(no: 130, ad: "Sude", sinif: "10E")
var o2 = Ogrenciler(no: 230, ad: "Buse", sinif: "12D")
var o3 = Ogrenciler(no: 330, ad: "Şule", sinif: "9O")

var OgrencilerListesi = [Ogrenciler]()
OgrencilerListesi.append(o1)
OgrencilerListesi.append(o2)
OgrencilerListesi.append(o3)

for o in OgrencilerListesi{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}


// Filtreleme
var f1 = OgrencilerListesi.filter({ $0.no! > 200 })
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}


var f2 = OgrencilerListesi.filter({ $0.ad!.contains("S") })
print("Filtreleme 2")
for o in f2 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}

// Sıralama - Sorting


var s1 = OgrencilerListesi.sorted(by: { $0.no! > $1.no! })
print("Sayısal büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}

var s2 = OgrencilerListesi.sorted(by: { $0.no! < $1.no! })
print("Sayısal küçükten büyüğe")
for o in s2 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}

var s3 = OgrencilerListesi.sorted(by: { $0.ad! < $1.ad! })
print("Metinsel büyükten küçüğe")
for o in s3 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}


var s4 = OgrencilerListesi.sorted(by: { $0.ad! > $1.ad! })
print("Metinsel küçükten büyüğe")
for o in s4 {
    print("No : \(o.no!) - Ad: \(o.ad!) - Sınıf : \(o.sinif!)")
}
