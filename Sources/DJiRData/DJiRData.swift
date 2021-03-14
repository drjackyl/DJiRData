import Foundation
import DJEncoding

public class DJiRData {
    
    public init() {
        csvDecoder = CSVDecoder()
        csvDecoder.configuration
            .stringEncoding(.ascii)
    }
    
    public func createCSVEventResultFromData(_ data: Data) throws -> CSVEventResult {
        let doubleNewlineRange = try getRangeBetweenSummaryAndResults(data)
        
        let summaryData = data[data.startIndex..<doubleNewlineRange.lowerBound]
        let summary = try decodeSummaryFromData(summaryData, using: csvDecoder)
        
        let resultsData = data[doubleNewlineRange.upperBound..<data.endIndex]
        let results = try decodeResultsFromData(resultsData, using: csvDecoder)
        
        return CSVEventResult(summary: summary, results: results)
    }
    
    public func createCSVSeasonStandingsFromData(_ data: Data) throws -> [CSVSeasonStandings] {
        do {
            return try csvDecoder.decode([CSVSeasonStandings].self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public enum Error: Swift.Error {
        case failedToDivideSummaryAndResults
        case failedToDecodeSummary(underlyingError: Swift.Error)
        case failedToDecodeResults(underlyingError: Swift.Error)
        case failedToDecodeData(underlyingError: Swift.Error)
    }
    
    
    
    
    
    // MARK: - Private
    
    private let csvDecoder: CSVDecoder
    private let doubleNewline = "\n\n".data(using: .ascii)!
    
    private func getRangeBetweenSummaryAndResults(_ data: Data) throws -> Range<Data.Index> {
        guard let doubleNewlineRange = data.range(of: doubleNewline) else {
            throw Error.failedToDivideSummaryAndResults
        }
        return doubleNewlineRange
    }
    
    private func createCSVDecoder() -> CSVDecoder {
        let csvDecoder = CSVDecoder()
        csvDecoder.configuration
            .stringEncoding(.ascii)
        return csvDecoder
    }
    
    private func decodeSummaryFromData(_ data: Data, using csvDecoder: CSVDecoder) throws -> CSVEventResult.Summary {
        do {
            return try csvDecoder.decode(CSVEventResult.Summary.self, from: data)
        } catch let error {
            throw Error.failedToDecodeSummary(underlyingError: error)
        }
    }
    
    private func decodeResultsFromData(_ data: Data, using csvDecoder: CSVDecoder) throws -> [CSVEventResult.Result] {
        do {
            return try csvDecoder.decode([CSVEventResult.Result].self, from: data)
        } catch let error {
            throw Error.failedToDecodeResults(underlyingError: error)
        }
    }
    
}
