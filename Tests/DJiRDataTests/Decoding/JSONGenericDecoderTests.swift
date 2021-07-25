import XCTest
@testable import DJiRData
import DJiRDataTestResources

class JSONGenericDecoderTests: XCTestCase {
    
    func testJSONGenericDecoder() throws {
        let data = IRDataTestResources
            .JSONGenericModel
            .SeriesRaceResults_IMSA2021s2w1
            .load()
        
        let results = try JSONGenericDecoder().decode([SeriesRaceResults.SessionInfo].self, from: data)
        
        XCTAssertEqual(results.count, 640)
    }
    
}
