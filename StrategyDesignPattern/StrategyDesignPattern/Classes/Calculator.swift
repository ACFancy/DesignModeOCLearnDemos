//
//  Calculator.swift
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

import Foundation

public enum Calculator: String
{
    case ADD = "+"
    case SUB = "-"
    
    func exec(_ a:Int, _ b:Int) -> Int {
        switch self {
        case .ADD:
            return a + b;
        case .SUB:
            return a - b;
        }
    }
}

public enum Calclulator2
{
    case Add(_ a:Int, _ b:Int)
    case Sub(_ a:Int, _ b:Int)
    
    func exec() -> Int {
        switch self {
        case let .Add(a, b):
            return a + b
        case let .Sub(a, b):
            return a - b
        }
    }
}
