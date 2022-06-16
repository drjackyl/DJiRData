struct _JSONGenericKeyedDecodingContainer<Key: CodingKey>: KeyedDecodingContainerProtocol {
    
    init(data: [String: JSONGenericModel.Value], codingPath: [CodingKey]) {
        self.data = data
        self.codingPath = codingPath
        self.allKeys = data.keys.compactMap { Key(stringValue: $0) }
    }
    
    let data: [String: JSONGenericModel.Value]
    
    
    
    
    
    // MARK: - KeyedDecodingContainerProtocol
    
    private(set) var codingPath: [CodingKey]
    private(set) var allKeys: [Key]
    
    func contains(_ key: Key) -> Bool {
        allKeys.contains { $0.stringValue == key.stringValue}
    }
    
    func decodeNil(forKey key: Key) throws -> Bool {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: String.Type, forKey key: Key) throws -> String {
        guard let valueForKey = data[key.stringValue] else {
            throw DecodingError.keyNotFound(key, .init(codingPath: codingPath, debugDescription: ""))
        }
        
        return valueForKey.stringValue
    }
    
    func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        guard let valueForKey = data[key.stringValue] else {
            throw DecodingError.keyNotFound(key, .init(codingPath: codingPath, debugDescription: ""))
        }
        
        guard let doubleValue = valueForKey.doubleValue else {
            throw DecodingError.typeMismatch(type, .init(codingPath: codingPath, debugDescription: ""))
        }
        
        return doubleValue
    }
    
    func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        guard let valueForKey = data[key.stringValue] else {
            throw DecodingError.keyNotFound(key, .init(codingPath: codingPath, debugDescription: ""))
        }
        
        guard let intValue = valueForKey.intValue else {
            throw DecodingError.typeMismatch(type, .init(codingPath: codingPath, debugDescription: ""))
        }
        
        return intValue
    }
    
    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64? {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func decodeIfPresent<T>(_ type: T.Type, forKey key: Key) throws -> T? where T : Decodable {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func superDecoder() throws -> Decoder {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    func superDecoder(forKey key: Key) throws -> Decoder {
        throw JSONGenericDecoder.Error.notSupported
    }
    
}
