/**
 List of series as retrieved via https://members-ng.iracing.com/data/series/get
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Series/Get](https://members-ng.iracing.com/data/doc/series/get)
 */
public typealias SeriesList = [Series]





// MARK: - SeriesElement

public struct Series: Codable {
    public let allowedLicenses: [License]
    public let category: String
    public let categoryID: Int
    public let eligible: Bool
    public let maxStarters: Int
    public let minStarters: Int
    public let ovalCautionType: Int
    public let roadCautionType: Int
    public let searchFilters: String?
    public let seriesID: Int
    public let seriesName: String
    public let seriesShortName: String

    enum CodingKeys: String, CodingKey {
        case allowedLicenses = "allowed_licenses"
        case category = "category"
        case categoryID = "category_id"
        case eligible = "eligible"
        case maxStarters = "max_starters"
        case minStarters = "min_starters"
        case ovalCautionType = "oval_caution_type"
        case roadCautionType = "road_caution_type"
        case searchFilters = "search_filters"
        case seriesID = "series_id"
        case seriesName = "series_name"
        case seriesShortName = "series_short_name"
    }

    public init(allowedLicenses: [License], category: String, categoryID: Int, eligible: Bool, maxStarters: Int, minStarters: Int, ovalCautionType: Int, roadCautionType: Int, searchFilters: String?, seriesID: Int, seriesName: String, seriesShortName: String) {
        self.allowedLicenses = allowedLicenses
        self.category = category
        self.categoryID = categoryID
        self.eligible = eligible
        self.maxStarters = maxStarters
        self.minStarters = minStarters
        self.ovalCautionType = ovalCautionType
        self.roadCautionType = roadCautionType
        self.searchFilters = searchFilters
        self.seriesID = seriesID
        self.seriesName = seriesName
        self.seriesShortName = seriesShortName
    }
    
    
    
    
    
    // MARK: - License

    public struct License: Codable {
        public let licenseGroup: Int
        public let minLicenseLevel: Int
        public let maxLicenseLevel: Int
        public let groupName: String

        enum CodingKeys: String, CodingKey {
            case licenseGroup = "license_group"
            case minLicenseLevel = "min_license_level"
            case maxLicenseLevel = "max_license_level"
            case groupName = "group_name"
        }

        public init(licenseGroup: Int, minLicenseLevel: Int, maxLicenseLevel: Int, groupName: String) {
            self.licenseGroup = licenseGroup
            self.minLicenseLevel = minLicenseLevel
            self.maxLicenseLevel = maxLicenseLevel
            self.groupName = groupName
        }
    }
}
