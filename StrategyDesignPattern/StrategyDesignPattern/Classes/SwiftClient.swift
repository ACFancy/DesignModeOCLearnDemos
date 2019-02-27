//
//  SwiftClient.swift
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

import Foundation
@objc public class SwiftClient: NSObject {
   @objc public static func execute() -> Void
    {
        print("result: \(Calculator.ADD.exec(20, 30))")
        print("result: \(Calculator.SUB.exec(20, 30))")
        print("result: \(Calculator(rawValue: "+")!.exec(20, 30))")
        print("result: \(Calculator(rawValue: "-")!.exec(20, 30))")
//        print("result: \(Calclulator2.Add(a: 20, b: 30).exec())")
//        print("result: \(Calclulator2.Sub(a: 20, b: 30).exec())")
        print("result: \(Calclulator2.Add(20, 30).exec())")
        print("result: \(Calclulator2.Sub(20, 30).exec())")
    }
}
