
import Foundation

let string1 = "Success is a Journey!!!"
var reversedString1 = ""
for char in string1 {
    reversedString1 = String(char) + reversedString1
}
print(reversedString1)

//2] Using reversed() Method
let string2 = "Be Greater Today!"
let reversedString2 = String(string2.reversed())
print(reversedString2)
// Output :- !yadoT retaerG eB

//3] Using reversed() with Array and join
let string3 = "Because You Can"
let reversedString3 = String(string3.reversed().map { String($0) }.joined())
print(reversedString3)
//Output:- naC uoY esuaceB

// 4]Using reduce

// Function to reverse a string using reduce
func reverseString4(_ s: String) -> String {
    return s.reduce("") { (acc, char) in
        String(char) + acc
    }
}

let inputString4 = "Actions Get Results"
let reversedString = reverseString4(inputString4)
print(reversedString)
//Output :- stluseR teG snoitcA

//5] Using For Each Loop

let string5 = "Be The Exception!"
var reversedString5 = ""
string5.forEach { reversedString5 = String($0) + reversedString5 }
print(reversedString5)
//Output :- !noitpecxE ehT eB

// 6] using prefix sufix
let string6 = "Aspire to inspire"
let reversedString6 = String(string6.map { String($0) }.reversed().joined())
print(reversedString6)
//Output:- eripsni ot eripsA


//7] Reversing with Recursion
func reverseString7(_ str: String) -> String {
    if str.isEmpty {
        return str
    }
    return reverseString7(String(str.dropFirst())) + String(str.first!)
}

let str = "Me And My Brilliant Mind!"
let reversedStr = reverseString7(str)
print(reversedStr)
//Output :- !dniM tnaillirB yM dnA eM

// 8] Reversing using reduce(into:) for Efficiency

let string = "Purely Vibing"
let reversedString8 = string.reduce(into: "") { result, char in
    result = String(char) + result
}
print(reversedString8)
//Output :- gnibiV yleruP


//9] Reverse the Word Order and Swap Case for Each Word

func reverseAndSwitchCase(_ input: String) -> String {
    let reversedString = String(input.reversed())
    // Split the string into words
    let words = reversedString.split(separator: " ")
    // Switch case for each word and join them back together
    let result = words.map { $0.lowercased().capitalized }.joined(separator: " ")
    return result
}
let inputString = "Never be limited by other people's limited Imaginations."
let result = reverseAndSwitchCase(inputString)
print(result)
// Output :- .Snoitanigami Detimil S'elpoep Rehto Yb Detimil Eb Reven

