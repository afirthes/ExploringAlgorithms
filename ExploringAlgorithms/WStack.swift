//
//  Stack.swift
//  CodeWars
//
//  Created by Afir Thes on 05.01.2023.
//

import Foundation

public struct WStack<Element> {
    
    private var storage: [Element] = []
    
    public init() {}
    
    public init(_ elements: [Element]) {
        self.storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public func isEmpty() -> Bool {
        peek() == nil
    }
}

extension WStack: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator:"\n"))
        -----------
        """
    }
}

extension WStack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
