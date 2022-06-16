/**
 List of assets for series as retrieved via https://members-ng.iracing.com/data/series/assets
 
 The dictionary's key-value is the String of a series-ID.
 
 ## Notes from Documentation
 
 image paths are relative to https://images-static.iracing.com/
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Series/Assets](https://members-ng.iracing.com/data/doc/series/assets)
 */
public typealias SeriesAssetsList = [String: SeriesAssets]





// MARK: - AssetsValue
public struct SeriesAssets: Codable {
    public let largeImage: UnknownType?
    public let logo: String
    public let seriesCopy: String
    public let seriesID: Int
    public let smallImage: UnknownType?

    enum CodingKeys: String, CodingKey {
        case largeImage = "large_image"
        case logo = "logo"
        case seriesCopy = "series_copy"
        case seriesID = "series_id"
        case smallImage = "small_image"
    }

    public init(largeImage: UnknownType?, logo: String, seriesCopy: String, seriesID: Int, smallImage: UnknownType?) {
        self.largeImage = largeImage
        self.logo = logo
        self.seriesCopy = seriesCopy
        self.seriesID = seriesID
        self.smallImage = smallImage
    }
}
