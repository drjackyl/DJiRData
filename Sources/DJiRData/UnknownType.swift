/**
 A fallback-type for unknown types in JSON
 */
public enum UnknownType: Codable, Equatable {
    case bool(_ value: Bool)
    case integer(_ value: Int)
    case floatingPoint(_ value: Double)
    case string(_ value: String)
    case other
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let boolValue = try? container.decode(Bool.self) {
            self = .bool(boolValue); return
        } else if let integerValue = try? container.decode(Int.self) {
            self = .integer(integerValue); return
        } else if let doubleValue = try? container.decode(Double.self) {
            self = .floatingPoint(doubleValue); return
        } else if let stringValue = try? container.decode(String.self) {
            self = .string(stringValue)
        } else {
            self = .other
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .bool(boolValue): try container.encode(boolValue)
        case let .integer(integerValue): try container.encode(integerValue)
        case let .floatingPoint(doubleValue): try container.encode(doubleValue)
        case let .string(stringValue): try container.encode(stringValue)
        case .other: try container.encodeNil()
        }
    }
}
