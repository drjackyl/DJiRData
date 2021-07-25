import XCTest
@testable import DJiRData
import DJiRDataTestResources

class IRDataSpectatorSessionsTests: XCTestCase {
    
    let seriesID_Spa24: Int = 281
    let seriesID_IMSA: Int = 447
    let seriesID_EES: Int = 448
    
    let startTime_20210724_0700: Int = 1627110000000
    let startTime_20210724_1200: Int = 1627128000000
    let startTime_20210724_1600: Int = 1627142400000
    
    func test_NumberOfSessionsPerSeries() throws {
        let data = IRDataTestResources
            .SpectatorSessions
            .SpectatorSessions_Road_20210725_Spa242021
            .load()
        
        let spectatorSessions = try IRData().createSpectatorSessionsFromData(data)
        XCTAssertEqual(spectatorSessions.sessions.filter { $0.seriesID == seriesID_Spa24 }.count, 30)
        XCTAssertEqual(spectatorSessions.sessions.filter { $0.seriesID == seriesID_IMSA }.count, 4)
        XCTAssertEqual(spectatorSessions.sessions.filter { $0.seriesID == seriesID_EES }.count, 5)
    }
    
    func test_NumberOfSessionsPerSeriesPerSlot() throws {
        let data = IRDataTestResources
            .SpectatorSessions
            .SpectatorSessions_Road_20210725_Spa242021
            .load()
        
        let spectatorSessions = try IRData().createSpectatorSessionsFromData(data)
        
        let sessions0700Slot = spectatorSessions.sessions
            .filter { $0.seriesID == seriesID_Spa24 && $0.startTime == startTime_20210724_0700 }
        XCTAssertEqual(sessions0700Slot.count, 5)
        
        let sessions1200Slot = spectatorSessions.sessions
            .filter { $0.seriesID == seriesID_Spa24 && $0.startTime == startTime_20210724_1200 }
        XCTAssertEqual(sessions1200Slot.count, 19)
        
        let sessions1600Slot = spectatorSessions.sessions
            .filter { $0.seriesID == seriesID_Spa24 && $0.startTime == startTime_20210724_1600 }
        XCTAssertEqual(sessions1600Slot.count, 6)
    }
    
}
