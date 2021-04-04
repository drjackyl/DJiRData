import XCTest
@testable import DJiRData
import DJiRDataTestResources
import Foundation

class DJiRDataCSVSeasonStandingsTests: XCTestCase {
    
    func test_StandingsOfAWeek() {
        let data = DJiRDataTestResources
            .CSVSeasonStandings
            .SeasonStandings_Week
            .load()
        
        do {
            let csvSeasonStandings = try DJiRData().createCSVSeasonStandingsFromData(data)
            XCTAssertEqual(csvSeasonStandings.count, 680)
            XCTAssertEqual(csvSeasonStandings.filter { $0.clubname == "DE-AT-CH" }.count, 101)
            XCTAssertTrue(csvSeasonStandings.contains { $0.name == "Felix Lieb" })
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }
    
    func test_StandingsOfASeason() {
        let data = DJiRDataTestResources
            .CSVSeasonStandings
            .SeasonStandings_Season
            .load()
        
        do {
            let csvSeasonStandings = try DJiRData().createCSVSeasonStandingsFromData(data)
            XCTAssertEqual(csvSeasonStandings.count, 2461)
            XCTAssertEqual(csvSeasonStandings.filter { $0.clubname == "DE-AT-CH" }.count, 322)
            XCTAssertTrue(csvSeasonStandings.contains { $0.name == "Felix Lieb" })
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }
    
    func test_EmptyData() {
        let data = Data()
        
        do {
            _ = try DJiRData().createCSVSeasonStandingsFromData(data)
        } catch let error as DJiRData.Error {
            guard case .failedToDecodeData = error else {
                XCTFail("The wrong error was thrown: \(error)"); return
            }
        } catch let error {
            XCTFail("An unexpected error was thrown: \(error)")
        }
    }
    
}
