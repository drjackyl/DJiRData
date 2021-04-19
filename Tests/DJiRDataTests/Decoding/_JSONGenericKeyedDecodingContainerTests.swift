import XCTest
@testable import DJiRData

class _JSONGenericKeyedDecodingContainerTests: XCTestCase {
    
    enum TwoKeys: String, CodingKey {
        case aKey = "1"
        case notherKey = "2"
    }
    
    var notSupportedContainer: _JSONGenericKeyedDecodingContainer<TwoKeys> {
        .init(data: [:], codingPath: [])
    }
    
    func testInit_CodingPath_IsSet() {
        let codingPath: [CodingKey] = [TwoKeys.aKey, TwoKeys.notherKey]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: [:], codingPath: codingPath)
    
        let comparableCodingPath = codingPath.map { $0.stringValue }
        let comparableContainerCodingPath = container.codingPath.map { $0.stringValue }
        XCTAssertEqual(comparableContainerCodingPath, comparableCodingPath)
    }
    
    func testInit_AllKeys_IsSet() {
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: ""),
            TwoKeys.notherKey.stringValue: .init(stringValue: "")
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        XCTAssertTrue(container.allKeys.contains(TwoKeys.aKey))
        XCTAssertTrue(container.allKeys.contains(TwoKeys.notherKey))
    }
    
    func testInit_AllKeys_ContainsOnlyKeysPresentInData() {
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: "")
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        XCTAssertTrue(container.allKeys.contains(TwoKeys.aKey))
        XCTAssertFalse(container.allKeys.contains(TwoKeys.notherKey))
    }
    
    func testContains_TrueForExistingKey() {
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: "")
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        XCTAssertTrue(container.contains(.aKey))
    }
    
    func testContains_FalseForNonExistingKey() {
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: "")
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        XCTAssertFalse(container.contains(.notherKey))
    }
    
    func testDecode_String() throws {
        let stringValue = "A Value"
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: stringValue)
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        let result = try container.decode(String.self, forKey: .aKey)
        
        XCTAssertEqual(result, stringValue)
    }
    
    func testDecode_String_ThrowsKeyNotFound() {
        let data: [String: JSONGenericModel.Value] = [:]
        
        do {
            _ = try _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [TwoKeys.aKey])
                .decode(String.self, forKey: .notherKey)
        } catch let error {
            guard case let DecodingError.keyNotFound(key, context) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(key.stringValue, TwoKeys.notherKey.stringValue)
            XCTAssertEqual(context.codingPath.count, 1)
            XCTAssertEqual(context.codingPath[0].stringValue, TwoKeys.aKey.stringValue)
        }
    }
    
    func testDecode_Double() throws {
        let doubleValue: Double = 13.37
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: "\(doubleValue)", doubleValue: doubleValue)
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        let result = try container.decode(Double.self, forKey: .aKey)
        
        XCTAssertEqual(result, doubleValue)
    }
    
    func testDecode_Double_ThrowsKeyNotFound() {
        let data: [String: JSONGenericModel.Value] = [:]
        
        do {
            _ = try _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [TwoKeys.aKey])
                .decode(Double.self, forKey: .notherKey)
        } catch let error {
            guard case let DecodingError.keyNotFound(key, context) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(key.stringValue, TwoKeys.notherKey.stringValue)
            XCTAssertEqual(context.codingPath.count, 1)
            XCTAssertEqual(context.codingPath[0].stringValue, TwoKeys.aKey.stringValue)
        }
    }
    
    func testDecode_Double_ThrowsTypeMismatch() {
        let stringValue = "Hello"
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: stringValue)
        ]
        
        do {
            _ = try _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [TwoKeys.notherKey])
                .decode(Double.self, forKey: .aKey)
        } catch let error {
            guard case let DecodingError.typeMismatch(type, context) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertTrue(type == Double.self)
            XCTAssertEqual(context.codingPath.count, 1)
            XCTAssertEqual(context.codingPath[0].stringValue, TwoKeys.notherKey.stringValue)
        }
    }
    
    func testDecode_Int() throws {
        let intValue = 42
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: "\(intValue)", intValue: intValue)
        ]
        
        let container = _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [])
        
        let result = try container.decode(Int.self, forKey: .aKey)
        
        XCTAssertEqual(result, intValue)
    }
    
    func testDecode_Int_ThrowsKeyNotFound() {
        let data: [String: JSONGenericModel.Value] = [:]
        
        do {
            _ = try _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [TwoKeys.aKey])
                .decode(Double.self, forKey: .notherKey)
        } catch let error {
            guard case let DecodingError.keyNotFound(key, context) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(key.stringValue, TwoKeys.notherKey.stringValue)
            XCTAssertEqual(context.codingPath.count, 1)
            XCTAssertEqual(context.codingPath[0].stringValue, TwoKeys.aKey.stringValue)
        }
    }
    
    func testDecode_Int_ThrowsTypeMismatch() {
        let stringValue = "Hello"
        let data: [String: JSONGenericModel.Value] = [
            TwoKeys.aKey.stringValue: .init(stringValue: stringValue)
        ]
        
        do {
            _ = try _JSONGenericKeyedDecodingContainer<TwoKeys>(data: data, codingPath: [TwoKeys.notherKey])
                .decode(Double.self, forKey: .aKey)
        } catch let error {
            guard case let DecodingError.typeMismatch(type, context) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertTrue(type == Double.self)
            XCTAssertEqual(context.codingPath.count, 1)
            XCTAssertEqual(context.codingPath[0].stringValue, TwoKeys.notherKey.stringValue)
        }
    }
    
    
    
    
    
    // MARK: - Not Supported
    
    func testNotSupported_DecodeNil() {
        XCTAssertThrowsError(try notSupportedContainer.decodeNil(forKey: .aKey))
    }
    
    func testNotSupported_DecodeBool() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Bool.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeFloat() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Float.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int8.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int16.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int32.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int64.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeUInt() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeUInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt8.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeUInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt16.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeUInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt32.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeUInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt64.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeT() {
        struct ADecodable: Decodable {
            let aValue: Int
        }
        XCTAssertThrowsError(try notSupportedContainer.decode(ADecodable.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentBool() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Bool.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentFloat() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Float.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int8.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int16.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int32.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int64.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentUInt() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentUInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt8.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentUInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt16.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentUInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt32.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentUInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt64.self, forKey: .aKey))
    }
    
    func testNotSupported_DecodeIfPresentT() {
        struct ADecodable: Decodable {
            let aValue: Int
        }
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(ADecodable.self, forKey: .aKey))
    }
    
}
