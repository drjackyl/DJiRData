import XCTest
@testable import DJiRData

class _JSONGenericUnkeyedDecodingContainerTests: XCTestCase {
    
    enum TwoKeys: String, CodingKey {
        case aKey = "1"
        case notherKey = "2"
    }
    
    var emptyModel: Legacy.JSONGenericModel {
        .init(m: [:], d: [])
    }
    
    var notSupportedContainer: Legacy._JSONGenericUnkeyedDecodingContainer = {
        .init(data: .init(m: [:], d: []), codingPath: [])
    }()
    
    
    
    
    
    // MARK: - Init
    
    func testInit_CodingPath_IsSet() {
        let codingPath: [CodingKey] = [TwoKeys.aKey, TwoKeys.notherKey]
        
        let container = Legacy._JSONGenericUnkeyedDecodingContainer(data: emptyModel, codingPath: codingPath)
    
        let comparableCodingPath = codingPath.map { $0.stringValue }
        let comparableContainerCodingPath = container.codingPath.map { $0.stringValue }
        XCTAssertEqual(comparableContainerCodingPath, comparableCodingPath)
    }
    
    func testInit_Count_IsSet() {
        let data = Legacy.JSONGenericModel(
            m: [TwoKeys.aKey.stringValue : "Irrelevant name of field"],
            d: [[TwoKeys.aKey.stringValue : Legacy.JSONGenericModel.Value(stringValue: "A Value")]]
        )
        
        let container = Legacy._JSONGenericUnkeyedDecodingContainer(data: data, codingPath: [])
        
        XCTAssertEqual(container.count, 1)
    }
    
    func testInit_IsAtEnd_IsFalse() {
        let data = Legacy.JSONGenericModel(
            m: [TwoKeys.aKey.stringValue : "Irrelevant name of field"],
            d: [[TwoKeys.aKey.stringValue : Legacy.JSONGenericModel.Value(stringValue: "A Value")]]
        )
        let container = Legacy._JSONGenericUnkeyedDecodingContainer(data: data, codingPath: [])
        
        XCTAssertFalse(container.isAtEnd)
    }
    
    func testInit_IsAtEnd_IsTrueWithEmptyModel() {
        let container = Legacy._JSONGenericUnkeyedDecodingContainer(data: emptyModel, codingPath: [])
        
        XCTAssertTrue(container.isAtEnd)
    }
    
    func testInit_CurrentIndex_IsZero() {
        let container = Legacy._JSONGenericUnkeyedDecodingContainer(data: emptyModel, codingPath: [])
        
        XCTAssertEqual(container.currentIndex, 0)
    }
    
    
    
    
    
    // MARK: - Decode
    
    func testDecode_ArrayOfKeyed() throws {
        struct Keyed: Decodable {
            let aValue: String
            let notherValue: String
            
            enum CodingKeys: String, CodingKey {
                case aValue = "1"
                case notherValue = "2"
            }
        }
        
        let data = Legacy.JSONGenericModel(
            m: [
                TwoKeys.aKey.stringValue: "Irrelevant name of field",
                TwoKeys.notherKey.stringValue: "Irrelevant name of field"
            ],
            d: [
                [
                    TwoKeys.aKey.stringValue: Legacy.JSONGenericModel.Value(stringValue: "Hello"),
                    TwoKeys.notherKey.stringValue: Legacy.JSONGenericModel.Value(stringValue: "World!")
                ]
            ]
        )
        
        var container = Legacy._JSONGenericUnkeyedDecodingContainer(data: data, codingPath: [])
        let result = try container.decode([Keyed].self)
        
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(result[0].aValue, "Hello")
        XCTAssertEqual(result[0].notherValue, "World!")
    }
    
    
    
    
    
    // MARK: - Not Suported
    
    func testNotSupported_DecodeNil() {
        XCTAssertThrowsError(try notSupportedContainer.decodeNil())
    }
    
    func testNotSupported_DecodeBool() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Bool.self))
    }

    func testNotSupported_DecodeFloat() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Float.self))
    }

    func testNotSupported_DecodeInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int8.self))
    }

    func testNotSupported_DecodeInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int16.self))
    }

    func testNotSupported_DecodeInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int32.self))
    }

    func testNotSupported_DecodeInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decode(Int64.self))
    }

    func testNotSupported_DecodeUInt() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt.self))
    }

    func testNotSupported_DecodeUInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt8.self))
    }

    func testNotSupported_DecodeUInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt16.self))
    }

    func testNotSupported_DecodeUInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt32.self))
    }

    func testNotSupported_DecodeUInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decode(UInt64.self))
    }

    func testNotSupported_DecodeIfPresentBool() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Bool.self))
    }

    func testNotSupported_DecodeIfPresentFloat() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Float.self))
    }

    func testNotSupported_DecodeIfPresentInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int8.self))
    }

    func testNotSupported_DecodeIfPresentInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int16.self))
    }

    func testNotSupported_DecodeIfPresentInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int32.self))
    }

    func testNotSupported_DecodeIfPresentInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(Int64.self))
    }

    func testNotSupported_DecodeIfPresentUInt() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt.self))
    }

    func testNotSupported_DecodeIfPresentUInt8() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt8.self))
    }

    func testNotSupported_DecodeIfPresentUInt16() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt16.self))
    }

    func testNotSupported_DecodeIfPresentUInt32() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt32.self))
    }

    func testNotSupported_DecodeIfPresentUInt64() {
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(UInt64.self))
    }

    func testNotSupported_DecodeIfPresentT() {
        struct ADecodable: Decodable {
            let aValue: Int
        }
        XCTAssertThrowsError(try notSupportedContainer.decodeIfPresent(ADecodable.self))
    }
    
}
