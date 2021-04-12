/**
 A generic model for data in JSON widely used across iRacing's website
 
 - Parameter m: Represents the model defined as key to field-name.
 - Parameter d: Represents the data defined as key to value. The value can be `String` or `Int`, I did not, yet see other types.
 */
public struct JSONGenericModel: Codable {
    public let m: [String: String]
    public let d: [[String: Value]]
    
    /**
     A wrapper for values of types `String`, `Int` or `Double`
     
     Since `Any` is not `Codable` - how should the decoder know to what type it needs to decode to - a wrapper is
     defined, which tries to decode a `String`. If that failed, it tries to decode an `Int`. If that failed, it tried to
     decode a floating-point number as `Double`. If that failed as well, an error is thrown, since those three are
     currently supported types. Boolean values seem to be encoded as Ints 0/1 and I did not yet spot floating-points.
     */
    public struct Value: Codable {
        public init(from decoder: Decoder) throws {
            let singleValueContainer = try decoder.singleValueContainer()
            if let stringValue = try? singleValueContainer.decode(String.self) {
                self.stringValue = stringValue
                self.intValue = nil
                self.doubelValue = nil
            } else if let intValue = try? singleValueContainer.decode(Int.self) {
                self.stringValue = "\(intValue)"
                self.intValue = intValue
                self.doubelValue = nil
            } else if let doubleValue = try? singleValueContainer.decode(Double.self) {
                self.stringValue = String(format: "%f", doubleValue)
                self.intValue = nil
                self.doubelValue = nil
            } else {
                throw Error.decodingValueFailed
            }
        }
        
        public let stringValue: String
        public let intValue: Int?
        public let doubelValue: Double?
    }
    
    public enum Error: Swift.Error {
        case decodingValueFailed
    }
}
