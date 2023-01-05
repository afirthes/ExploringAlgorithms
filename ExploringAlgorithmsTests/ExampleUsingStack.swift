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
    
}
