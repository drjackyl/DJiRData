/**
 List of stats of series as retrieved via https://members-ng.iracing.com/data/series/stats_series
 
 ## Notes from Documentation
 
 To get series and seasons for which standings should be available, filter the list by official: true.
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Series/Stats_Series](https://members-ng.iracing.com/data/doc/series/stats_series)
 */
public typealias SeriesStatsList = [SeriesStats]





// MARK: - SeriesStat

public struct SeriesStats: Codable {
    public let seriesID: Int
    public let seriesName: String
    public let seriesShortName: String
    public let categoryID: Int
    public let category: String
    public let active: Bool
    public let official: Bool
    public let seasons: [Season]

    enum CodingKeys: String, CodingKey {
        case seriesID = "series_id"
        case seriesName = "series_name"
        case seriesShortName = "series_short_name"
        case categoryID = "category_id"
        case category = "category"
        case active = "active"
        case official = "official"
        case seasons = "seasons"
    }

    public init(seriesID: Int, seriesName: String, seriesShortName: String, categoryID: Int, category: String, active: Bool, official: Bool, seasons: [Season]) {
        self.seriesID = seriesID
        self.seriesName = seriesName
        self.seriesShortName = seriesShortName
        self.categoryID = categoryID
        self.category = category
        self.active = active
        self.official = official
        self.seasons = seasons
    }
    
    
    
    
    
    // MARK: - Season

    public struct Season: Codable {
        public let seasonID: Int
        public let seriesID: Int
        public let seasonName: String
        public let seasonShortName: String
        public let seasonYear: Int
        public let seasonQuarter: Int
        public let active: Bool
        public let official: Bool
        public let driverChanges: Bool
        public let carClasses: [CarClass]
        public let raceWeeks: [RaceWeek]

        enum CodingKeys: String, CodingKey {
            case seasonID = "season_id"
            case seriesID = "series_id"
            case seasonName = "season_name"
            case seasonShortName = "season_short_name"
            case seasonYear = "season_year"
            case seasonQuarter = "season_quarter"
            case active = "active"
            case official = "official"
            case driverChanges = "driver_changes"
            case carClasses = "car_classes"
            case raceWeeks = "race_weeks"
        }

        public init(seasonID: Int, seriesID: Int, seasonName: String, seasonShortName: String, seasonYear: Int, seasonQuarter: Int, active: Bool, official: Bool, driverChanges: Bool, carClasses: [CarClass], raceWeeks: [RaceWeek]) {
            self.seasonID = seasonID
            self.seriesID = seriesID
            self.seasonName = seasonName
            self.seasonShortName = seasonShortName
            self.seasonYear = seasonYear
            self.seasonQuarter = seasonQuarter
            self.active = active
            self.official = official
            self.driverChanges = driverChanges
            self.carClasses = carClasses
            self.raceWeeks = raceWeeks
        }
    }
    
    
    
    
    
    // MARK: - CarClass
    
    public struct CarClass: Codable {
        public let carClassID: Int
        public let shortName: String
        public let name: String
        public let relativeSpeed: Int

        enum CodingKeys: String, CodingKey {
            case carClassID = "car_class_id"
            case shortName = "short_name"
            case name = "name"
            case relativeSpeed = "relative_speed"
        }

        public init(carClassID: Int, shortName: String, name: String, relativeSpeed: Int) {
            self.carClassID = carClassID
            self.shortName = shortName
            self.name = name
            self.relativeSpeed = relativeSpeed
        }
    }
    
    
    
    
    
    // MARK: - RaceWeek
    
    public struct RaceWeek: Codable {
        public let seasonID: Int
        public let raceWeekNum: Int
        public let track: Track

        enum CodingKeys: String, CodingKey {
            case seasonID = "season_id"
            case raceWeekNum = "race_week_num"
            case track = "track"
        }

        public init(seasonID: Int, raceWeekNum: Int, track: Track) {
            self.seasonID = seasonID
            self.raceWeekNum = raceWeekNum
            self.track = track
        }
        
        
        
        
        
        // MARK: - Track
        
        public struct Track: Codable {
            public let trackID: Int
            public let trackName: String
            public let configName: String?

            enum CodingKeys: String, CodingKey {
                case trackID = "track_id"
                case trackName = "track_name"
                case configName = "config_name"
            }

            public init(trackID: Int, trackName: String, configName: String?) {
                self.trackID = trackID
                self.trackName = trackName
                self.configName = configName
            }
        }
    }
}
