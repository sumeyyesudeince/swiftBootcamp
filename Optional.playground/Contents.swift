import UIKit

// Optional = Nullable = Null Safety
// Tanımlama
var mesaj = "Merhaba"

// null, nil
var str:String?

str = "Merhaba"

if str != nil {
    print(str!) // unwrap
}else{
    print("str nil değer içeriyor")
}


// Optional Binding

if let temp = str {
    print(temp) // Otomatik unwrap
}else{
    print("str nil değer içeriyor")
}


if var temp = str {
    print(temp) // Otomatik unwrap
    temp = "Nasılsın?"
    print(temp)
}else{
    print("str nil değer içeriyor")
}
