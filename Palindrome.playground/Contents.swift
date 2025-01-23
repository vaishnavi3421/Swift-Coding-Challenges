import Foundation
//Palindrome
//1] Basic Palindrome Check (String)
func isPalindrome(_ str:String) -> Bool{
    let string = str.lowercased().filter { $0.isLetter }
    return string == String(string.reversed())
}
print(isPalindrome("A man, a plan, a canal, Panama"))
//Output:- true

//2]Basic Palindrome Check (Int)
func isPalindrome(_ num:Int) -> Bool{
    let number = String(num)
    return number == String(number.reversed())
}
print(isPalindrome(12349321))
//Output :- false

//Palindrome number without converting to string.

func isPalindromeNumber(_ num: Int) -> Bool {
    if num < 0 || (num % 10 == 0 && num != 0) {
        return false
    }
    var original = num
    var reversed = 0
    while original > reversed {
        reversed = reversed * 10 + original % 10
        original /= 10
    }
    return original == reversed || original == reversed / 10
}
print(isPalindromeNumber(2332))
 
//Find All Palindromic Numbers in a Range
func palindromicNumbersInRange(_ start: Int, _ end: Int) -> [Int] {
    var result = [Int]()
    for i in start...end {
        if isPalindromeNumber(i) {
            result.append(i)
        }
    }
    return result
}
print(palindromicNumbersInRange(10, 50))
//Output:- [11, 22, 33, 44]

// Palindromic Substring
// Generate all palindromic Substring
func allPalindromicSubstrings(_ s: String) -> [String] {
    var result = [String]()
    let chars = Array(s)
    for start in 0..<s.count {
        for end in start..<s.count {
            let substring = String(chars[start...end])
            if isPalindrome1(substring) {
                result.append(substring)
            }
        }
    }
    return result
}
func isPalindrome1(_ str: String) -> Bool {
    let chars = Array(str)
    var left = 0
    var right = chars.count - 1
    while left < right {
        if chars[left] != chars[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}
//let input = "aabb"
//let palindromicSubstrings = allPalindromicSubstrings(input)
//print(palindromicSubstrings)
// Output: ["a", "aa", "a", "b", "bb", "b"]

func longestPalindrome(_ s: String) -> String {
    guard s.count > 1 else { return s }
    let chars = Array(s)
    var start = 0, maxLength = 1
    for i in 0..<s.count {
        var l = i, r = i
        while l >= 0 && r < s.count && chars[l] == chars[r] {
            if r - l + 1 > maxLength {
                start = l
                maxLength = r - l + 1
            }
            l -= 1
            r += 1
        }
        l = i
        r = i + 1
        while l >= 0 && r < s.count && chars[l] == chars[r] {
            if r - l + 1 > maxLength {
                start = l
                maxLength = r - l + 1
            }
            l -= 1
            r += 1
        }
    }
    let startIndex = s.index(s.startIndex, offsetBy: start)
    let endIndex = s.index(s.startIndex, offsetBy: start + maxLength)
    return String(s[startIndex..<endIndex])
}
let input = "babbbad"
let longest = longestPalindrome(input)
print(longest)
// Output: abbba

