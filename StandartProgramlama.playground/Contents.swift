import UIKit

// Karşılaştırma Operatörleri

var a = 40
var b = 50

var x = 90
var y = 80

print("a == b   : \(a == b)")
print("a != b   : \(a != b)")
print("a > b    : \(a > b)")
print("a >= b   : \(a >= b)")
print("a < b    : \(a < b)")
print("a <= b   : \(a <= b)")

print("a > b || x > y : \(a > b || x > y)") // OR(veya), f-f: f, diğer durumlarda true

print("a > b && x > y : \(a > b && x > y)") // AND(ve), t-t:t, diğer durumlarda false


// If

var yas = 24
var isim = "Buse"

if yas >= 18 {
    print("Reşitsiniz")
}

if isim == "Sude" {
    print("Selam Sude")
}else if isim == "Buse"{
    print("Naber Buse?")
}else{
    print("Tanımıyorum")
}


var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoş geldiniz")
}else{
    print("Hatalı giriş")
}


var sonuc = 9

if sonuc == 9 || sonuc == 10 {
    print("9 veya 10")
}else{
    print("Sonuç 9 veya 19 değil.")
}


// Switch

var gun = 3

switch gun {
    case 1: print("Pazartesi")
    case 2: print("Salı")
    case 3: print("Çarşamba")
    case 4: print("Perşembe")
    case 5: print("Cuma")
    case 6: print("Cumartesi")
    case 7: print("Pazar")
    default: print("Böyle bir gün yok")
    
}


// Döngüler

// 1,2,3
for x in 1...3 {
    print("Döngü 1: \(x)")
}

// 10-20 arası 5'er artış

for a in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2: \(a)")
}


// 10-20 arası 5'er azalış

for a in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3: \(a)")
}


// 1,2,3

var sayac = 1

while sayac < 4{
    print("Döngü 4: \(sayac)")
    sayac = sayac + 1
}


for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Döngü 6: \(i)")
}
