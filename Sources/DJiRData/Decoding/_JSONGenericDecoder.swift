class _JSONGenericDecoder: Decoder {
    
    init(_ jsonGenericModel: JSONGenericModel, codingPath: [CodingKey] = []) {
        self.jsonGenericModel = jsonGenericModel
        self.codingPath = codingPath
    }
    
    struct IndexKey: CodingKey {
        init(index: Int) {
            self.intValue = index
        }
        
        init?(intValue: Int) {
            self.intValue = intValue
        }
        
        init?(stringValue: String) { return nil }
        
        var stringValue: String { "\(intValue ?? -1)"  }
        var intValue: Int?
    }
    
    enum Error: Swift.Error {
        
        /**
         If the coding-path does not end with a row-key, the decoder does not know, which row to access in the data
         */
        case codingPathDoesNotEndWithIndexKey(codingPath: [CodingKey])
        
        /**
         A `IndexKey` describes the row in the data to access, hence must be a positive integer
         */
        case indexKeyIsNoPositiveInteger(indexKey: IndexKey)
        
        /**
         A `IndexKey` must be within the bounds of the data.
         */
        case indexKeyIsOutOfBounds(index: Int, count: Int)
        
    }
    
    
    
    
    
    // MARK: - Decoder
    
    var codingPath: [CodingKey]
    
    var userInfo: [CodingUserInfoKey : Any] = [:]
    
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        let indexKey = try ensureIndexKeyAtTheEndOfCodingPath()
        let index = try ensureValidIndexValue(indexKey)
        try ensureIndexIsWithinBoundsOfData(index)
        
        let container = _JSONGenericKeyedDecodingContainer<Key>(data: jsonGenericModel.d[index], codingPath: codingPath + [indexKey])
        
        return KeyedDecodingContainer(container)
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        return _JSONGenericUnkeyedDecodingContainer(data: jsonGenericModel, codingPath: codingPath)
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        throw JSONGenericDecoder.Error.notSupported
    }
    
    
    
    
    
    // MARK: - Private
    
    private let jsonGenericModel: JSONGenericModel
    
    private func ensureIndexKeyAtTheEndOfCodingPath() throws -> IndexKey {
        guard let indexKey = codingPath.last as? IndexKey else {
            throw Error.codingPathDoesNotEndWithIndexKey(codingPath: codingPath)
        }
        return indexKey
    }
    
    private func ensureValidIndexValue(_ indexKey: IndexKey) throws -> Int {
        guard let index = indexKey.intValue,
              index >= 0
        else {
            throw Error.indexKeyIsNoPositiveInteger(indexKey: indexKey)
        }
        return index
    }
    
    private func ensureIndexIsWithinBoundsOfData(_ index: Int) throws {
        guard index < jsonGenericModel.d.count else {
            throw Error.indexKeyIsOutOfBounds(index: index, count: jsonGenericModel.d.count)
        }
    }
    
}
