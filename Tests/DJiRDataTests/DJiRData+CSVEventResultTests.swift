import XCTest
@testable import DJiRData
import DJiRDataTestResources
import Foundation

class DJiRDataCSVEventResultTests: XCTestCase {
    
    // MARK: - Regular Data
    
    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Practice() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Practice
            .load()
        
        do {
            let csvEventResult = try DJiRDataAPI().createCSVEventResultFromData(data)
            XCTAssertEqual(csvEventResult.summary.track, "IRacing Superspeedway")
            XCTAssertEqual(csvEventResult.results.count, 22)
            XCTAssertEqual(csvEventResult.results[13].name, "Jason Nooyen")
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Qualify() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Qualify
            .load()
        
        do {
            let csvEventResult = try DJiRDataAPI().createCSVEventResultFromData(data)
            XCTAssertEqual(csvEventResult.summary.series, "Carburetor Cup")
            XCTAssertEqual(csvEventResult.results.count, 22)
            XCTAssertEqual(csvEventResult.results[0].name, "Rusty Galon")
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Race() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Race
            .load()
        
        do {
            let csvEventResult = try DJiRDataAPI().createCSVEventResultFromData(data)
            XCTAssertEqual(csvEventResult.summary.seasonYear, 2021)
            XCTAssertEqual(csvEventResult.results.count, 22)
            XCTAssertEqual(csvEventResult.results[21].name, "Sam Hinds")
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_MultiClass_Practice() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Practice
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_MultiClass_Qualify() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Qualify
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_MultiClass_Race() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Race
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_SingleClass_Practice() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Practice
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_SingleClass_Qualify() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Qualify
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_NoTeam_SingleClass_Race() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Race
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_MultiClass_Practice() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Practice
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_MultiClass_Qualify() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Qualify
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_MultiClass_Race() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Race
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Practice() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Practice
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Qualify() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Qualify
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }

    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Race() {
        let data = DJiRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Race
            .load()
        
        do {
            _ = try DJiRDataAPI().createCSVEventResultFromData(data)
        } catch let error {
            XCTFail("An error was thrown: \(error)")
        }
    }
    
    // MARK: - Erronous Data
    
    func testEmptyData() {
        XCTAssertThrowsError(try DJiRDataAPI().createCSVEventResultFromData(Data())) { error in
            guard case DJiRDataAPI.Error.failedToDivideSummaryAndResults = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testDividerOnly() {
        let data = "\n\n".data(using: .ascii)!
        
        XCTAssertThrowsError(try DJiRDataAPI().createCSVEventResultFromData(data)) { error in
            guard case DJiRDataAPI.Error.failedToDecodeSummary = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testInvalidSummaryData() {
        let data = DJiRDataTestResources.CSVEventResult.InvalidSummary.load()
        
        XCTAssertThrowsError(try DJiRDataAPI().createCSVEventResultFromData(data)) { error in
            guard case DJiRDataAPI.Error.failedToDecodeSummary = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testInvalidResultData() {
        let data = DJiRDataTestResources.CSVEventResult.InvalidResults.load()
        
        XCTAssertThrowsError(try DJiRDataAPI().createCSVEventResultFromData(data)) { error in
            guard case DJiRDataAPI.Error.failedToDecodeResults = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
}
