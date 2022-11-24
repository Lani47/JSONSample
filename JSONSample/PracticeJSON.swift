//
//  PracticeJSON.swift
//  JSONSample
//
//  Created by cmStudent on 2020/08/04.
//  Copyright © 2020 20CM0103. All rights reserved.
//

import Foundation

let practice1 = """
{
    "intValue": 120
}
""".data(using: .utf8)!

struct Practice1: Codable {
    let intValue: Int
    
}
let practice2 = """
{
    "doubleValue": 120.5
}
""".data(using: .utf8)!

struct Practice2: Codable {
    let doubleValue: Double
    
}

let practice3 = """
{
    "bool_Value": true
}
""".data(using: .utf8)!

struct Practice3: Codable {
    let bool_Value: Bool
    
}
let practice4 = """
{
    "OptionalStringValue": null
}
""".data(using: .utf8)!

struct Practice4: Codable {
    let OptionalStringValue: String?
    
}
let practice5 = """
{
    "fluitsList": ["ばなな", "りんご", "目るん"]
}
""".data(using: .utf8)!

struct Practice5: Codable {
    let fluitsList: [String]
    
}
let practice6 = """
{
    "name" : りんご
    "price" : 200
}
""".data(using: .utf8)!

struct Practice6: Codable {
    let name: String
    let price: Int
    
}
let practice7 = """
{
    "fluitsPriceList": [{"name" : "りんご",
"price" : 200},{"name" : "ばなな", "price" : 200}]
}
""".data(using: .utf8)!

struct Practice7: Codable {
    let fluitsPriceList: [String]
    
    
    struct fluits7: Codable {
        let name: String
        let price: Int
        
    }
}


struct PracticeUtil<T:Codable> {
    //共通化
    static func PracticeJSONDecode(data: Data) -> T{
        do {
            let decodeValue = try JSONDecoder().decode(T.self, from: data)
            return decodeValue
        } catch {
            print(error)
            exit(99)
        }
    }
}

