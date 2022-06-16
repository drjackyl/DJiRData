extension Legacy {
    
    struct _JSONGenericUnkeyedDecodingContainer: UnkeyedDecodingContainer {
        
        init(data: JSONGenericModel, codingPath: [CodingKey]) {
            self.data = data
            self.codingPath = codingPath
        }
        
        let data: JSONGenericModel
        
        
        
        
        
        // MARK: -
        
        private(set) var codingPath: [CodingKey]
        var count: Int? { data.d.count }
        var isAtEnd: Bool { currentIndex >= count ?? 0 }
        private(set) var currentIndex: Int = 0
        
        mutating func decodeNil() throws -> Bool {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Bool.Type) throws -> Bool {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: String.Type) throws -> String {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Double.Type) throws -> Double {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Float.Type) throws -> Float {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Int.Type) throws -> Int {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Int8.Type) throws -> Int8 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Int16.Type) throws -> Int16 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Int32.Type) throws -> Int32 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: Int64.Type) throws -> Int64 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: UInt.Type) throws -> UInt {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
            let indexKey = _JSONGenericDecoder.IndexKey(index: currentIndex)
            let decoder = _JSONGenericDecoder(data, codingPath: [indexKey])
            defer { currentIndex += 1 }
            return try T(from: decoder)
        }
        
        mutating func decodeIfPresent(_ type: Bool.Type) throws -> Bool? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: String.Type) throws -> String? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Double.Type) throws -> Double? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Float.Type) throws -> Float? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Int.Type) throws -> Int? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Int8.Type) throws -> Int8? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Int16.Type) throws -> Int16? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Int32.Type) throws -> Int32? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: Int64.Type) throws -> Int64? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: UInt.Type) throws -> UInt? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: UInt8.Type) throws -> UInt8? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: UInt16.Type) throws -> UInt16? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: UInt32.Type) throws -> UInt32? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent(_ type: UInt64.Type) throws -> UInt64? {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func decodeIfPresent<T>(_ type: T.Type) throws -> T? where T : Decodable {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
            throw JSONGenericDecoder.Error.notSupported
        }
        
        mutating func superDecoder() throws -> Decoder {
            throw JSONGenericDecoder.Error.notSupported
        }
        
    }
}
