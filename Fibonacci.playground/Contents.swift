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
