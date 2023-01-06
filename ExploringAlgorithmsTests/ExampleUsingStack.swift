//
//  ExampleUsingStack.swift
//  CodeWars Testing
//
//  Created by Afir Thes on 05.01.2023.
//

import XCTest
@testable import ExploringAlgorithms

final class ExampleUsingStack: XCTestCase {
    
    func testUsingStack() {
        var stack = WStack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
        print(stack)
    }
    
    func testWithInitializer() {
        let array = ["A", "B", "C", "D"]
        let stack = WStack(array)
        print(stack)
    }
    
    func testWithArrayElements() {
        let stack: WStack = [1.0, 2.0, 3.0]
        print(stack)
    }
    
    func testReverseArrayWithStack() {
        let array:[Int] = [1,2,3,4,5,6,7,8]
        var resultingArray:[Int] = []
        
        var stack = WStack(array)
        
        while let e = stack.pop() {
            resultingArray.append(e)
        }
        
        XCTAssertEqual(resultingArray, [8,7,6,5,4,3,2,1])
    }
    

    
    func testBalanceBrackets() {
        
        // inner func: dont want static
        func isBalanced(_ string: String) -> Bool {
            var stack: WStack<Character> = WStack()
            for c in string {
                switch c {
                case "(":
                    stack.push(c)
                case ")":
                    if stack.pop() == nil {
                        return false
                    }
                default:
                    return false
                }
            }
            return stack.isEmpty()
        }
        
        let correct:[String] = [
            "()",
            "(())()()(())",
            "()()((()())(()()))"
        ]
        
        let incorrect:[String] = [
            ")(",
            ")))",
            "(()",
            "()}{"
        ]
        
        correct.forEach { s in
            XCTAssertTrue(isBalanced(s))
        }
        
        incorrect.forEach { s in
            XCTAssertFalse(isBalanced(s))
        }
    }
    
}

