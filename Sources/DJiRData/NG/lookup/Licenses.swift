/**
 List of licenses as retrieved via https://members-ng.iracing.com/data/lookup/licenses
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Lookup/Licenses](https://members-ng.iracing.com/data/doc/lookup/licenses)
 */
public typealias Licenses = [License]





// MARK: - License

public struct License: Codable {
    public let licenseGroup: Int
    public let groupName: String
    public let minNumRaces: Int?
    public let participationCredits: Int
    public let minSrToFastTrack: Int?
    public let levels: [Level]
    public let minNumTt: Int?

    enum CodingKeys: String, CodingKey {
        case licenseGroup = "license_group"
        case groupName = "group_name"
        case minNumRaces = "min_num_races"
        case participationCredits = "participation_credits"
        case minSrToFastTrack = "min_sr_to_fast_track"
        case levels = "levels"
        case minNumTt = "min_num_tt"
    }

    public init(licenseGroup: Int, groupName: String, minNumRaces: Int?, participationCredits: Int, minSrToFastTrack: Int?, levels: [Level], minNumTt: Int?) {
        self.licenseGroup = licenseGroup
        self.groupName = groupName
        self.minNumRaces = minNumRaces
        self.participationCredits = participationCredits
        self.minSrToFastTrack = minSrToFastTrack
        self.levels = levels
        self.minNumTt = minNumTt
    }
   
    
    
    
    
    // MARK: - Level
    
    public struct Level: Codable {
        public let licenseID: Int
        public let licenseGroup: Int
        public let license: String
        public let shortName: String
        public let licenseLetter: String
        public let color: String

        enum CodingKeys: String, CodingKey {
            case licenseID = "license_id"
            case licenseGroup = "license_group"
            case license = "license"
            case shortName = "short_name"
            case licenseLetter = "license_letter"
            case color = "color"
        }

        public init(licenseID: Int, licenseGroup: Int, license: String, shortName: String, licenseLetter: String, color: String) {
            self.licenseID = licenseID
            self.licenseGroup = licenseGroup
            self.license = license
            self.shortName = shortName
            self.licenseLetter = licenseLetter
            self.color = color
        }
    }
}
