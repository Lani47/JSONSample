//
//  StringSample.swift
//  JSONSample
//
//  Created by cmStudent on 2020/08/04.
//  Copyright © 2020 20CM0103. All rights reserved.
//

import Foundation

let stringJSON = """
{
"stringValue":"string"
}
""".data(using: .utf8)!

struct JSONSample: Codable {
    let stringValue: String
    
}

func JSONDecode() -> JSONSample{
    do{
        
        let decodeValue = try JSONDecoder().decode(JSONSample.self, from: stringJSON)
        return decodeValue
    } catch{
        print(error)
        exit(99)
    }
}
