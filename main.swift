import Foundation
/*

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
//var array = unsortedIntegers

var unsorted = [String]()
var input: String
*/
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
   
    let temp = integers[firstIndex]
     integers[firstIndex] = integers[secondIndex]
     integers[secondIndex] = temp
}
/*
func sort(array: [Int])    {

    var totalswapcount = 0
    var passcount = 0
    var array = unsortedIntegers
    var swapcountperpass = 0

//    print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(unsortedIntegers)")
    repeat {
        swapcountperpass = 0
        passcount += 1
        for index in 0 ..< array.count - 1 {
//            let nextindex = index + 1
            let element = array[index]
            let nextelement = array[index + 1]

            if element > nextelement {
                swap(integers: &array, firstIndex: index, secondIndex: index+1)
                swapcountperpass += 1
                totalswapcount += 1
            }
        }
        print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(array)")
    } while swapcountperpass != 0

}

while let input = readLine() {
    unsorted.append(input)
}
sort(array: unsorted)
 */

var unsorted = [String]()
var input: String

func compareString(stringOne: String, stringTwo: String) -> Bool {

    let firstString = stringOne.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let secondString = stringTwo.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    if firstString > secondString {
        return true
    }
    return false
}

func sort(array:[String]) {
    var unsorted = array
    var swapcountperpass = 0
    repeat {
        swapcountperpass = 0    
        for index in 0 ..< unsorted.count - 1 {
            let element = unsorted[index]
            let nextelement = unsorted[index + 1]

if compareString(stringOne: element, stringTwo: nextelement) == true {
    swap(integers: &unsorted, firstIndex: index, secondIndex: index+1)
    swapcountperpass += 1
}
        }
    } while swapcountperpass != 0
let sortedText = unsorted.joined(separator: "\n")

//print(sortedText)

}
// keeps appending the inserted strings to the unsortedstring until you enter an empty one
//repeat {
//  input = readLine()!
//unsorted.append(input)
//} while input != ""
while let input = readLine() {
    unsorted.append(input)
}

sort(array: unsorted)
