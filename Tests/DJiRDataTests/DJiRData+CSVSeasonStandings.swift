import XCTest
@testable import DJiRData
import DJiRDataTestResources
import Foundation

class DJiRDataCSVSeasonStandingsTests: XCTestCase {
    
    func test_StandingsOfAWeek() throws {
        let data = DJiRDataTestResources
            .CSVSeasonStandings
            .SeasonStandings_Week
            .load()
        
        let csvSeasonStandings = try DJiRDataAPI().createCSVSeasonStandingsFromData(data)
        XCTAssertEqual(csvSeasonStandings.count, 680)
        XCTAssertEqual(csvSeasonStandings.filter { $0.clubname == "DE-AT-CH" }.count, 101)
        XCTAssertTrue(csvSeasonStandings.contains { $0.name == "Felix Lieb" })
    }
    
    func test_StandingsOfASeason() throws {
        let data = DJiRDataTestResources
            .CSVSeasonStandings
            .SeasonStandings_Season
            .load()
        let csvSeasonStandings = try DJiRDataAPI().createCSVSeasonStandingsFromData(data)
        XCTAssertEqual(csvSeasonStandings.count, 2461)
        XCTAssertEqual(csvSeasonStandings.filter { $0.clubname == "DE-AT-CH" }.count, 322)
        XCTAssertTrue(csvSeasonStandings.contains { $0.name == "Felix Lieb" })
    }
    
    func test_EmptyData() {
        let data = Data()
        
        do {
            _ = try DJiRDataAPI().createCSVSeasonStandingsFromData(data)
        } catch let error as DJiRDataAPI.Error {
            guard case .failedToDecodeData = error else {
                XCTFail("The wrong error was thrown: \(error)"); return
            }
        } catch let error {
            XCTFail("An unexpected error was thrown: \(error)")
        }
    }
    
}
