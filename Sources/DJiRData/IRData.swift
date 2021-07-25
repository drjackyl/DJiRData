import Foundation
import DJEncoding

public class IRData {
    
    public init() {
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
    
    public func createSeriesRaceResultsFromData(_ data: Data) throws -> SeriesRaceResults {
        do {
            let results = try jsonGenericDecoder.decode([SeriesRaceResults.SessionInfo].self, from: data)
            return SeriesRaceResults(sessions: results)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createSpectatorSessionsFromData(_ data: Data) throws -> SpectatorSessions {
        do {
            let sessions = try jsonDecoder.decode([SpectatorSessions.SpectatorSession].self, from: data)
            return SpectatorSessions(sessions: sessions)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createJSONGenericFromData(_ data: Data) throws -> JSONGenericModel {
        do {
            return try jsonDecoder.decode(JSONGenericModel.self, from: data)
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
    
    private let csvDecoder: CSVDecoder = .init()
    private let doubleNewline = "\n\n".data(using: .ascii)!
    private let jsonGenericDecoder: JSONGenericDecoder = .init()
    private let jsonDecoder: JSONDecoder = .init()
    
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
