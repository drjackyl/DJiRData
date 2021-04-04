import XCTest
@testable import DJiRData
import DJiRDataTestResources

class JSONGenericModelTests: XCTestCase {
    
    func testSeriesRaceResults() {
        let data = DJiRDataTestResources
            .JSONGenericModel
            .SeriesRaceResults_IMSA2021s2w1
            .load()
        
        do {
            let model = try JSONDecoder().decode(JSONGenericModel.self, from: data)
            XCTAssertEqual(model.m.count, 8)
            XCTAssertEqual(model.d.count, 640)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }
    
}
