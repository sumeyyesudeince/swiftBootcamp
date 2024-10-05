import UIKit

// Set
var meyveler = Set<String>()

// Veri ekleme
meyveler.insert("karpuz")
meyveler.insert("ananas")
meyveler.insert("kiraz")
print(meyveler)

meyveler.insert("armut")
print(meyveler)

for meyve in meyveler {
 print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated(){
    print("\(indeks). ->\(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("kiraz")
print(meyveler)

// Dictionary
var iller = [Int:String]()

// Veri ekleme
iller[34] = "İSTANBUL"
iller[42] = "KONYA"

print(iller)

// Veri okuma
print(iller[42]!)

// Veri güncelleme
iller[42] = "Yeni Konya"
print(iller)

for (anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 42)
print(iller)




