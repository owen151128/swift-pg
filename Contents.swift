import Cocoa

var greeting = "Hello, playground"

print(greeting)

var j = 0

for i in 0...10 {
    j += i * i
}

print(j)

publicFunction()

// 220711
let immutableVariable = "I'm not changed"
var mutableVariable = "I want to chage"

// Error
//immutableVariable = "a"

mutableVariable = "b"

let test = "good"
print("test is \(test)")

var test2 = 123.1
print("\(type(of: test2))")

// Random
print(Int.random(in: -100...100))

// Unicode
print("\u{2665}")

// String interpolation
print("a\nb\nasdf : \(test2)")

let integer: Int = -54
let binary = 0b10101
let octal = 0o54
let hex = 0xfe
let unsigned: UInt = 54
let boolean: Bool = true

let float: Float = 1.23
let double1: Double = 1.234567
let hardDouble = 1.23e5
let hardDouble2 = 1.23e-4
let hardDouble3 = 0xap3
let hardDouble4 = 0xap-3

print("\(float), \(double1), \(hardDouble), \(hardDouble2), \(hardDouble3), \(hardDouble4)")

let char: Character = "a"
let char2: Character = "가"
let char3 = "a"
let char4 = "가"

print("\(char), \(char2), \(char3), \(char4), \(type(of: char)), \(type(of: char2)), \(type(of: char3)), \(type(of: char4))")

var person = ("owen", 123, 123.123)
person.0 = "owen2"

print(person)

typealias Person = (name: String, age: Int, height: Double)

// Same
//var myPerson: (name: String, age: Int, height: Double) = ("owen", 26, 179.9)
var myPerson: Person = ("owen", 26, 179.9)
myPerson.name = "owen151128"

print(myPerson)

// Same
//let array: Array<String> = ["owen1", "owen2", "owen3", "owen4"]
//let array: [String] = ["owen1", "owen2", "owen3", "owen4"]
var array = ["owen1", "owen2", "owen3", "owen4"]
array.append("owen5")

// Same
//array.insert("owen6", at: 5)
array.append("owen6")

array.insert("owen1(new)", at: 1)

array[0] = "owen0"

// Same
//let emptyArray: [String] = []
let emptyArray = [String]()

print("\(emptyArray), \(type(of: emptyArray))")

print("\(array), \(type(of: array))")

let element1 = array.firstIndex(of: "owen3")
print("\(array.first ?? "nil!"), \(array.last ?? "nil!"), \(array.firstIndex(of: "owen3") ?? -1), \(array.firstIndex(of: "notExistString") ?? -1)")
print(String(describing: 54))

// Same
//var testDict = Dictionary<Int, String>()
//var testDict = [Int: String]()
var testDict: [Int: String] = [:]

typealias OwenDict = [Int: String]

var myDict: OwenDict = OwenDict()

var owenDict = [0: "owen1", 1: "owen2", 2: "owen3"]
owenDict[5] = "owen5"
owenDict[9] = "owen9"
owenDict[10] = "owen10"

print(owenDict.removeValue(forKey: 10) ?? "nil!")
print(owenDict.removeValue(forKey: 11) ?? "nil!")

// Set
// Type interface result : Array
// wrong
//var set = ["owen1", "owen2", "owen3"]
// correct
var owenSet: Set<String> = ["owen1", "owen2", "owen3"]
owenSet.insert("owen4")
owenSet.insert("owen5")
owenSet.insert("owen6")

print(owenSet.remove("owen6") ?? "nil!")
print(owenSet.remove("owen7") ?? "nil!")

let aSet: Set<String> = ["owen1", "owen2", "owen3"]
let bSet: Set<String> = ["owen2", "owen3", "owen4"]

// Intersection
let intersectSet = aSet.intersection(bSet)
print(intersectSet)

// Exclusive or
let exclusiveOrSet = aSet.symmetricDifference(bSet)
print(exclusiveOrSet)

// Union
let unionSet = aSet.union(bSet)
print(unionSet)

// Subtract
let subtractSet = aSet.subtracting(bSet)
print(subtractSet)

// Set calculation
let bird: Set<String> = ["pigeon", "chicken", "wild goose"]
let mammal: Set<String> = ["lion", "tiger", "bear"]
let animal: Set<String> = bird.union(mammal)

print(bird.isDisjoint(with: mammal)) // bird - mammal is disjoint sets?
print(bird.isSubset(of: animal)) // bird is subset of animal?
print(animal.isSuperset(of: mammal)) // animal is superset of mammal?
print(animal.isSuperset(of: bird)) // animal is superset of bird?
