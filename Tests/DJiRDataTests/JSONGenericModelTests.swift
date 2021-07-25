import XCTest
@testable import DJiRData
import DJiRDataTestResources

class JSONGenericModelTests: XCTestCase {
    
    func testSeriesRaceResults() throws {
        let data = DJiRDataTestResources
            .JSONGenericModel
            .SeriesRaceResults_IMSA2021s2w1
            .load()
        
        let model = try JSONDecoder().decode(JSONGenericModel.self, from: data)
        XCTAssertEqual(model.m.count, 8)
        XCTAssertEqual(model.d.count, 640)
    }
    
}
