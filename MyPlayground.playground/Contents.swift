import UIKit

var str : String = """
for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks. For example:
"""
var str2 = "String value [2]"
var str3 = "String value [3]"
var strs = [str, str2, str3]
strs.append("String value [4]")

var dict = [
    "m1" : str,
    "m2" : str2
]
dict["m3"] = str3

//str = "Replaced"
print("The word is \(str)")

for str in strs {
    print("member --> " + str)
    if str.contains("4") {
        print("This member have 4")
    } else {
        print("This member havn't 4")
    }
}

let iterateStr = strs.makeIterator()

print("The word dictionary is \(dict)")
for (key, value) in dict {
    print("\(key) mapped with \(value)")
}

func greeting(greeting : String, name : String?) -> String {
    return """
    \(greeting)! \(name ?? "nobody")
    """
}

let greetingWord = greeting(greeting: "Hello", name: "Nija")
print(greetingWord)

var iWhile = 2
while iWhile <= 100 {
    iWhile += 2
    print("Now i = \(iWhile)")
}

// ------

func checkNumber(subject : String, numbers : [Int], checker : (Int) -> Bool) {
    for number in numbers {
        print("[\(subject)] Check \(number) --> \(checker(number))")
    }
}
func evenChecker(number : Int) -> Bool { return number % 2 == 0 }
let oddChecker = {(number : Int) -> Bool in return number % 2 != 0 }
checkNumber(subject: "Is Even", numbers: [1, 2, 3, 4, 5, 6, 12, 13, 23, 62, 74, 1241, 6423], checker: evenChecker)
checkNumber(subject: "Is Odd", numbers: [1, 2, 3, 4, 5, 6, 12, 13, 23, 62, 74, 1241, 6423], checker: oddChecker)
