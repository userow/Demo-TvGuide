//
// Channel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct Channel: Codable, JSONEncodable, Hashable {
    static let orderNumRule = NumericRule<Int64>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let accessNumRule = NumericRule<Int64>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var orderNum: Int64
    public var accessNum: Int64
    public var callSign: String
    public var id: Int64

    public init(orderNum: Int64, accessNum: Int64, callSign: String, id: Int64) {
        self.orderNum = orderNum
        self.accessNum = accessNum
        self.callSign = callSign
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case orderNum
        case accessNum
        case callSign = "CallSign"
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(orderNum, forKey: .orderNum)
        try container.encode(accessNum, forKey: .accessNum)
        try container.encode(callSign, forKey: .callSign)
        try container.encode(id, forKey: .id)
    }
}