//
//  AutoCodable.swift
//  TemplatesTests
//
//  Created by Ilya Puchka on 13/04/2018.
//  Copyright © 2018 Pixle. All rights reserved.
//

import Foundation

protocol AutoDecodable {}
protocol AutoEncodable {}
protocol AutoCodable: AutoDecodable, AutoEncodable {}

struct CustomKeyDecodableStruct: AutoDecodable {
    let string: String
    let bool: Bool
    let int: Int

    enum CodingKeys: String, CodingKey {
        case int = "integer"

// sourcery:inline:auto:CustomKeyDecodableStruct.CodingKeys.AutoCodable
        case string
        case bool
// sourcery:end
}

}
