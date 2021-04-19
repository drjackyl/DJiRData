import XCTest
@testable import DJiRData

class _JSONGenericDecoderTest: XCTestCase {
    
    struct Model: Decodable {
        let aKey: String
        
        enum CodingKeys: String, CodingKey {
            case aKey = "1"
        }
    }
    
    var emptyModel: JSONGenericModel {
        .init(m: [:], d: [])
    }
    
    
    
    
    
    // MARK: - Keyed Container
    
    func testJSONGenericDecoder_KeyedContainer() throws {
        let stringValue = "A Value"
        let data: JSONGenericModel = .init(
            m: [:],
            d: [[Model.CodingKeys.aKey.stringValue : JSONGenericModel.Value(stringValue: stringValue)]]
        )
        
        let decoder = _JSONGenericDecoder(data, codingPath: [_JSONGenericDecoder.IndexKey(intValue: 0)!])
        let container = try decoder.container(keyedBy: Model.CodingKeys.self)
        
        let result = try container.decode(String.self, forKey: Model.CodingKeys.aKey)
        
        XCTAssertEqual(result, stringValue)
    }
    
    func testJSONGenericDecoder_KeyedContainer_NoRowKey() {
        let decoder = _JSONGenericDecoder(emptyModel, codingPath: [NotRowKey.nah])
        
        enum NotRowKey: String, CodingKey {
            case nah = "nah"
        }
        
        do {
            _ = try decoder.container(keyedBy: Model.CodingKeys.self)
        } catch let error {
            guard case let _JSONGenericDecoder.Error.codingPathDoesNotEndWithIndexKey(codingPath) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(codingPath.last?.stringValue, NotRowKey.nah.stringValue)
        }
    }
    
    func testJSONGenericDecoder_KeyedConainer_RowKeyIntValueIsNoPositiveInteger() {
        let decoder = _JSONGenericDecoder(emptyModel, codingPath: [_JSONGenericDecoder.IndexKey(intValue: -1)!])
        
        do {
            _ = try decoder.container(keyedBy: Model.CodingKeys.self)
        } catch let error {
            guard case let _JSONGenericDecoder.Error.indexKeyIsNoPositiveInteger(rowKey) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(rowKey.intValue, -1)
        }
    }
    
    func testJSONGenericDecoder_KeyedConainer_RowKeyOutOfBounds() {
        let decoder = _JSONGenericDecoder(emptyModel, codingPath: [_JSONGenericDecoder.IndexKey(intValue: 1)!])
        
        do {
            _ = try decoder.container(keyedBy: Model.CodingKeys.self)
        } catch let error {
            guard case let _JSONGenericDecoder.Error.indexKeyIsOutOfBounds(row, numberOfElements) = error else {
                XCTFail("Wrong error thrown"); return
            }
            
            XCTAssertEqual(row, 1)
            XCTAssertEqual(numberOfElements, 0)
        }
    }
    
    
    
    
    
    // MARK: - Unkeyed Container
    
    func testJSONGenericDecoder_UnkeyedContainer() throws {
        let stringValue = "A Value"
        let data: JSONGenericModel = .init(
            m: [:],
            d: [[Model.CodingKeys.aKey.stringValue : JSONGenericModel.Value(stringValue: stringValue)]]
        )
        
        let decoder = _JSONGenericDecoder(data, codingPath: [])
        
        let result = try Array<Model>(from: decoder)
        
        print(result)
    }
    
}
