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
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
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
