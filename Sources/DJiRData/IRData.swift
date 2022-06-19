#if canImport(Foundation)
import Foundation

public class IRData {
    
    public init() {}
    
    public func createCarsFromData(_ data: Data) throws -> Cars {
        do {
            return try jsonDecoder.decode(Cars.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createCarAssetsListFromData(_ data: Data) throws -> CarAssetsList  {
        do {
            return try jsonDecoder.decode(CarAssetsList.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createCarClassesFromData(_ data: Data) throws -> CarClasses {
        do {
            return try jsonDecoder.decode(CarClasses.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createCategoriesFromData(_ data: Data) throws -> Categories {
        do {
            return try jsonDecoder.decode(Categories.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createDivisionsFromData(_ data: Data) throws -> Divisions {
        do {
            return try jsonDecoder.decode(Divisions.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createEventTypesFromData(_ data: Data) throws -> EventTypes {
        do {
            return try jsonDecoder.decode(EventTypes.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createLicensesFromData(_ data: Data) throws -> Licenses {
        do {
            return try jsonDecoder.decode(Licenses.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createLookupCategoriesFromData(_ data: Data) throws -> LookupCategories {
        do {
            return try jsonDecoder.decode(LookupCategories.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createSeasonsFromData(_ data: Data) throws -> Seasons {
        do {
            return try jsonDecoder.decode(Seasons.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createSeriesListFromData(_ data: Data) throws -> SeriesList {
        do {
            return try jsonDecoder.decode(SeriesList.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createSeriesAssetsListFromData(_ data: Data) throws -> SeriesAssetsList {
        do {
            return try jsonDecoder.decode(SeriesAssetsList.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createSeriesStatsListFromData(_ data: Data) throws -> SeriesStatsList {
        do {
            return try jsonDecoder.decode(SeriesStatsList.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createTracksFromData(_ data: Data) throws -> Tracks {
        do {
            return try jsonDecoder.decode(Tracks.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public func createTrackAssetsListFromData(_ data: Data) throws -> TrackAssetsList {
        do {
            return try jsonDecoder.decode(TrackAssetsList.self, from: data)
        } catch let error {
            throw Error.failedToDecodeData(underlyingError: error)
        }
    }
    
    public enum Error: Swift.Error {
        case failedToDecodeData(underlyingError: Swift.Error)
    }
    
    
    
    
    
    // MARK: - Private
    
    private let jsonDecoder: JSONDecoder = .init()
    
}
#endif
