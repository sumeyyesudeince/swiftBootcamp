import UIKit

func kisiTanima1(ad:String) {
    if ad == "Sude" {
        print("Selam Sude")
    }else{
        print("Seni tanımıyorum")
    }
       
}

kisiTanima1(ad: "Buse")


func kisiTanima2(ad:String) {
    guard ad == "Sude" else {
        print("Seni tanımıyorum")
        return
    }
     print("Selam Sude")
}

kisiTanima2(ad: "Şule")


// Hata ayıklama
// 1. Compile Error : Editor hataları

// let x = 10
// x = 40

// 2. Runtime Error : Exception : Çalışma sırasında oluşan hatalar
enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int, sayi2:Int) throws -> Int{
    if sayi2 == 0{
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}



do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 5)

if let temp = sonuc1 {
    print(temp)
}else{
    print("Sayı sıfıra bölünemez")
}
