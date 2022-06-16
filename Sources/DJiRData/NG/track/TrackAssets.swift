/**
 List of assets for a track as retrieved via https://members-ng.iracing.com/data/track/assets
 
 The dictionary's key-value is the String of a track-ID.
 
 ## Notes from Documentation
 
 image paths are relative to https://images-static.iracing.com/
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Track/Assets](https://members-ng.iracing.com/data/doc/track/assets)
 */
public typealias TrackAssetsList = [String: TrackAssets]





// MARK: - TrackAssetsValue

public struct TrackAssets: Codable {
    public let coordinates: String
    public let detailCopy: String
    public let detailTechspecsCopy: String?
    public let detailVideo: UnknownType?
    public let folder: String
    public let galleryImages: String?
    public let galleryPrefix: String?
    public let largeImage: String
    public let logo: String
    public let north: String?
    public let numSVGImages: Int
    public let smallImage: String
    public let trackID: Int
    public let trackMap: String
    public let trackMapLayers: TrackMapLayers

    enum CodingKeys: String, CodingKey {
        case coordinates = "coordinates"
        case detailCopy = "detail_copy"
        case detailTechspecsCopy = "detail_techspecs_copy"
        case detailVideo = "detail_video"
        case folder = "folder"
        case galleryImages = "gallery_images"
        case galleryPrefix = "gallery_prefix"
        case largeImage = "large_image"
        case logo = "logo"
        case north = "north"
        case numSVGImages = "num_svg_images"
        case smallImage = "small_image"
        case trackID = "track_id"
        case trackMap = "track_map"
        case trackMapLayers = "track_map_layers"
    }

    public init(coordinates: String, detailCopy: String, detailTechspecsCopy: String?, detailVideo: UnknownType?, folder: String, galleryImages: String?, galleryPrefix: String?, largeImage: String, logo: String, north: String?, numSVGImages: Int, smallImage: String, trackID: Int, trackMap: String, trackMapLayers: TrackMapLayers) {
        self.coordinates = coordinates
        self.detailCopy = detailCopy
        self.detailTechspecsCopy = detailTechspecsCopy
        self.detailVideo = detailVideo
        self.folder = folder
        self.galleryImages = galleryImages
        self.galleryPrefix = galleryPrefix
        self.largeImage = largeImage
        self.logo = logo
        self.north = north
        self.numSVGImages = numSVGImages
        self.smallImage = smallImage
        self.trackID = trackID
        self.trackMap = trackMap
        self.trackMapLayers = trackMapLayers
    }
    
    
    
    
    
    // MARK: - TrackMapLayers
    
    public struct TrackMapLayers: Codable {
        public let background: String
        public let inactive: String
        public let active: String
        public let pitroad: String
        public let startFinish: String
        public let turns: String

        enum CodingKeys: String, CodingKey {
            case background = "background"
            case inactive = "inactive"
            case active = "active"
            case pitroad = "pitroad"
            case startFinish = "start-finish"
            case turns = "turns"
        }

        public init(background: String, inactive: String, active: String, pitroad: String, startFinish: String, turns: String) {
            self.background = background
            self.inactive = inactive
            self.active = active
            self.pitroad = pitroad
            self.startFinish = startFinish
            self.turns = turns
        }
    }
}
