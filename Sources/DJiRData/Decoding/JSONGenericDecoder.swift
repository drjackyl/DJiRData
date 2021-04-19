import Foundation

class JSONGenericDecoder {
    
    func decode<T: Decodable>(_ type: T.Type, from data: Data) throws -> T {
        let jsonGeneric = try decodeJSONGeneric(data)
        let decoder = _JSONGenericDecoder(jsonGeneric)
        return try T(from: decoder)
    }
    
    enum Error: Swift.Error {
        case failedToDecodeJSONGenericModel(underlyingError: Swift.Error)
        case notSupported
    }
    
    
    
    
    
    // MARK: - Private
    
    private let jsonDecoder: JSONDecoder = .init()
    
    private func decodeJSONGeneric(_ data: Data) throws -> JSONGenericModel {
        do {
            return try jsonDecoder.decode(JSONGenericModel.self, from: data)
        } catch let error {
            throw Error.failedToDecodeJSONGenericModel(underlyingError: error)
        }
    }
    
}
