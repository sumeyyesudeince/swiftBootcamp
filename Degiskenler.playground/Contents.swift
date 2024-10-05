import UIKit

var ogrenciAdi = "Sude"
var ogrenciYas = 24
var ogrenciBoy = 1.60
var ogrenciBasharf = "S"
var ogreciDevamDurumu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogreciDevamDurumu)

var urun_id:Int = 3416
var urun_adi:String = "Macbook Pro"
var urun_adet:Int = 100
var urun_fiyat:Int = 34999
var urun_tedarikcisi = "Apple"

print("Ürün id        : \(urun_id)")
print("Ürün adı       : \(urun_adi)")
print("Ürün adet      : \(urun_adet)")
print("Ürün fiyat     : \(urun_fiyat)₺")
print("Ürün tedarikçi : \(urun_tedarikcisi)")


// let sabit, var değişken
// let ile sonradan değişiklik yapamıyoruz

let numara = 300
print(numara)

// Tür Dönüşümü
// Sayısaldan sayısala

var i = 42
var d = 56.79

var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

// Sayısaldan Metine

var sonuc3 = String(i)
var sonuc4 = String(d)

print(sonuc3)
print(sonuc4)


// Metinden sayısala

var yazi = "34"

if let sonuc5 = Int(yazi){
    print(sonuc5)
}
