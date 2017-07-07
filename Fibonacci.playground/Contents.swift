//
//  Fibonacci.playground
//  Fibonacci Numbers Recursive / Iterative
//
//  Created by Felix Schmidt on 07.07.17.
//
import Foundation


/**
     Recursive Solution
**/
func fibonacciNumbersRecursive(for count: Int, first: Int, second: Int) -> [Int] {
    if count == 0 {
        return []
    }
    return [first] + fibonacciNumbersRecursive(for: count-1, first: second, second: (second+first))
}
_ = fibonacciNumbersRecursive(for: 10, first: 0, second: 1)


/**
 Iterativ Solution
 **/
func fibonacciNumbersIterative(for count: Int) -> [Int] {
    var numbers = [0, 1]
    for _ in 0...count-3 {
        let nextNumber = numbers[numbers.count - 2] + numbers.last!
        numbers.append(nextNumber)
    }
    return numbers
}
_ = fibonacciNumbersIterative(for: 10)
