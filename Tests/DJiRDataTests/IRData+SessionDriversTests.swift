import XCTest
@testable import DJiRData
import DJiRDataTestResources

class IRDataSessionDriversTests: XCTestCase {
    
    func test_SubSessionID() throws {
        let data = IRDataTestResources
            .SessionDrivers
            .SessionDrivers_39841506_Spa242021_Split1_18
            .load()
        
        let sessionDrivers = try IRData().createSessionDriversFromData(data)
        
        XCTAssertEqual(sessionDrivers.subSessionID, 39841506)
    }
    
    func test_Drivers() throws {
        let data = IRDataTestResources
            .SessionDrivers
            .SessionDrivers_39841506_Spa242021_Split1_18
            .load()
        
        let sessionDrivers = try IRData().createSessionDriversFromData(data)
        
        XCTAssertNotNil(sessionDrivers.drivers.first(where: { $0.driverName == "Maximilian+Benecke" }))
        XCTAssertNotNil(sessionDrivers.drivers.first(where: { $0.driverName == "Max+Verstappen"  }))
        XCTAssertNotNil(sessionDrivers.drivers.first(where: { $0.driverName == "Shane+van+Gisbergen" }))
    }
    
}
