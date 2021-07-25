import XCTest
@testable import DJiRData
import DJiRDataTestResources
import Foundation

class IRDataCSVEventResultTests: XCTestCase {
    
    // MARK: - Regular Data
    
    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Practice() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Practice
            .load()
        
        let csvEventResult = try IRData().createCSVEventResultFromData(data)
        XCTAssertEqual(csvEventResult.summary.track, "IRacing Superspeedway")
        XCTAssertEqual(csvEventResult.results.count, 22)
        XCTAssertEqual(csvEventResult.results[13].name, "Jason Nooyen")
    }
    
    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Qualify() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Qualify
            .load()
        
        let csvEventResult = try IRData().createCSVEventResultFromData(data)
        XCTAssertEqual(csvEventResult.summary.series, "Carburetor Cup")
        XCTAssertEqual(csvEventResult.results.count, 22)
        XCTAssertEqual(csvEventResult.results[0].name, "Rusty Galon")
    }
    
    func test_Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Race() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Race
            .load()
        
        let csvEventResult = try IRData().createCSVEventResultFromData(data)
        XCTAssertEqual(csvEventResult.summary.seasonYear, 2021)
        XCTAssertEqual(csvEventResult.results.count, 22)
        XCTAssertEqual(csvEventResult.results[21].name, "Sam Hinds")
    }
    
    func test_Road_NoTeam_MultiClass_Practice() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Practice
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_NoTeam_MultiClass_Qualify() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Qualify
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_NoTeam_MultiClass_Race() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_MultiClass_Race
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_NoTeam_SingleClass_Practice() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Practice
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_NoTeam_SingleClass_Qualify() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Qualify
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_NoTeam_SingleClass_Race() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_NoTeam_SingleClass_Race
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_MultiClass_Practice() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Practice
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_MultiClass_Qualify() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Qualify
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_MultiClass_Race() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_MultiClass_Race
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Practice() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Practice
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Qualify() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Qualify
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    func test_Road_Team_SingleClass_NoClubPoints_NoDivision_Race() throws {
        let data = IRDataTestResources
            .CSVEventResult
            .Road_Team_SingleClass_NoClubPoints_NoDivision_Race
            .load()
        
        _ = try IRData().createCSVEventResultFromData(data)
    }
    
    // MARK: - Erronous Data
    
    func testEmptyData() {
        XCTAssertThrowsError(try IRData().createCSVEventResultFromData(Data())) { error in
            guard case IRData.Error.failedToDivideSummaryAndResults = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testDividerOnly() {
        let data = "\n\n".data(using: .ascii)!
        
        XCTAssertThrowsError(try IRData().createCSVEventResultFromData(data)) { error in
            guard case IRData.Error.failedToDecodeSummary = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testInvalidSummaryData() {
        let data = IRDataTestResources.CSVEventResult.InvalidSummary.load()
        
        XCTAssertThrowsError(try IRData().createCSVEventResultFromData(data)) { error in
            guard case IRData.Error.failedToDecodeSummary = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
    
    func testInvalidResultData() {
        let data = IRDataTestResources.CSVEventResult.InvalidResults.load()
        
        XCTAssertThrowsError(try IRData().createCSVEventResultFromData(data)) { error in
            guard case IRData.Error.failedToDecodeResults = error else {
                XCTFail("Unexpected error was thrown: \(error)"); return
            }
        }
    }
}
