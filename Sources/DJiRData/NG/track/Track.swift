/**
 List of tracks as retrieved via https://members-ng.iracing.com/data/track/get
 
 Each track-configuration has a separate value of `Track`.
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Track/Get](https://members-ng.iracing.com/data/doc/track/get)
 */
public typealias Tracks = [Track]





// MARK: - Track

public struct Track: Codable {
    public let aiEnabled: Bool
    public let awardExempt: Bool
    public let category: String
    public let categoryID: Int
    public let closes: String
    public let configName: String?
    public let cornersPerLap: Int
    public let created: String
    public let freeWithSubscription: Bool
    public let fullyLit: Bool
    public let gridStalls: Int
    public let hasOptPath: Bool
    public let hasShortParadeLap: Bool
    public let hasStartZone: Bool
    public let hasSVGMap: Bool
    public let isDirt: Bool
    public let isOval: Bool
    public let lapScoring: Int
    public let latitude: Double
    public let location: String
    public let longitude: Double
    public let maxCars: Int
    public let nightLighting: Bool
    public let nominalLapTime: Double
    public let numberPitstalls: Int
    public let opens: String
    public let packageID: Int
    public let pitRoadSpeedLimit: Int?
    public let price: Double
    public let priority: Int
    public let purchasable: Bool
    public let qualifyLaps: Int
    public let restartOnLeft: Bool
    public let retired: Bool
    public let searchFilters: String
    public let siteURL: String?
    public let sku: Int
    public let soloLaps: Int
    public let startOnLeft: Bool
    public let supportsGripCompound: Bool
    public let techTrack: Bool
    public let timeZone: String
    public let trackConfigLength: Double
    public let trackDirpath: String
    public let trackID: Int
    public let trackName: String
    public let trackTypes: [TrackType]
    public let banking: String?

    enum CodingKeys: String, CodingKey {
        case aiEnabled = "ai_enabled"
        case awardExempt = "award_exempt"
        case category = "category"
        case categoryID = "category_id"
        case closes = "closes"
        case configName = "config_name"
        case cornersPerLap = "corners_per_lap"
        case created = "created"
        case freeWithSubscription = "free_with_subscription"
        case fullyLit = "fully_lit"
        case gridStalls = "grid_stalls"
        case hasOptPath = "has_opt_path"
        case hasShortParadeLap = "has_short_parade_lap"
        case hasStartZone = "has_start_zone"
        case hasSVGMap = "has_svg_map"
        case isDirt = "is_dirt"
        case isOval = "is_oval"
        case lapScoring = "lap_scoring"
        case latitude = "latitude"
        case location = "location"
        case longitude = "longitude"
        case maxCars = "max_cars"
        case nightLighting = "night_lighting"
        case nominalLapTime = "nominal_lap_time"
        case numberPitstalls = "number_pitstalls"
        case opens = "opens"
        case packageID = "package_id"
        case pitRoadSpeedLimit = "pit_road_speed_limit"
        case price = "price"
        case priority = "priority"
        case purchasable = "purchasable"
        case qualifyLaps = "qualify_laps"
        case restartOnLeft = "restart_on_left"
        case retired = "retired"
        case searchFilters = "search_filters"
        case siteURL = "site_url"
        case sku = "sku"
        case soloLaps = "solo_laps"
        case startOnLeft = "start_on_left"
        case supportsGripCompound = "supports_grip_compound"
        case techTrack = "tech_track"
        case timeZone = "time_zone"
        case trackConfigLength = "track_config_length"
        case trackDirpath = "track_dirpath"
        case trackID = "track_id"
        case trackName = "track_name"
        case trackTypes = "track_types"
        case banking = "banking"
    }

    public init(aiEnabled: Bool, awardExempt: Bool, category: String, categoryID: Int, closes: String, configName: String?, cornersPerLap: Int, created: String, freeWithSubscription: Bool, fullyLit: Bool, gridStalls: Int, hasOptPath: Bool, hasShortParadeLap: Bool, hasStartZone: Bool, hasSVGMap: Bool, isDirt: Bool, isOval: Bool, lapScoring: Int, latitude: Double, location: String, longitude: Double, maxCars: Int, nightLighting: Bool, nominalLapTime: Double, numberPitstalls: Int, opens: String, packageID: Int, pitRoadSpeedLimit: Int?, price: Double, priority: Int, purchasable: Bool, qualifyLaps: Int, restartOnLeft: Bool, retired: Bool, searchFilters: String, siteURL: String?, sku: Int, soloLaps: Int, startOnLeft: Bool, supportsGripCompound: Bool, techTrack: Bool, timeZone: String, trackConfigLength: Double, trackDirpath: String, trackID: Int, trackName: String, trackTypes: [TrackType], banking: String?) {
        self.aiEnabled = aiEnabled
        self.awardExempt = awardExempt
        self.category = category
        self.categoryID = categoryID
        self.closes = closes
        self.configName = configName
        self.cornersPerLap = cornersPerLap
        self.created = created
        self.freeWithSubscription = freeWithSubscription
        self.fullyLit = fullyLit
        self.gridStalls = gridStalls
        self.hasOptPath = hasOptPath
        self.hasShortParadeLap = hasShortParadeLap
        self.hasStartZone = hasStartZone
        self.hasSVGMap = hasSVGMap
        self.isDirt = isDirt
        self.isOval = isOval
        self.lapScoring = lapScoring
        self.latitude = latitude
        self.location = location
        self.longitude = longitude
        self.maxCars = maxCars
        self.nightLighting = nightLighting
        self.nominalLapTime = nominalLapTime
        self.numberPitstalls = numberPitstalls
        self.opens = opens
        self.packageID = packageID
        self.pitRoadSpeedLimit = pitRoadSpeedLimit
        self.price = price
        self.priority = priority
        self.purchasable = purchasable
        self.qualifyLaps = qualifyLaps
        self.restartOnLeft = restartOnLeft
        self.retired = retired
        self.searchFilters = searchFilters
        self.siteURL = siteURL
        self.sku = sku
        self.soloLaps = soloLaps
        self.startOnLeft = startOnLeft
        self.supportsGripCompound = supportsGripCompound
        self.techTrack = techTrack
        self.timeZone = timeZone
        self.trackConfigLength = trackConfigLength
        self.trackDirpath = trackDirpath
        self.trackID = trackID
        self.trackName = trackName
        self.trackTypes = trackTypes
        self.banking = banking
    }
    
    
    
    
    
    // MARK: - TrackType
    
    public struct TrackType: Codable {
        public let trackType: String

        enum CodingKeys: String, CodingKey {
            case trackType = "track_type"
        }

        public init(trackType: String) {
            self.trackType = trackType
        }
    }
}
