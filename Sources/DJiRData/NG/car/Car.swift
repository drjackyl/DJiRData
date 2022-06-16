/**
 Cars as retrieved via https://members-ng.iracing.com/data/car/get
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Car/Get](https://members-ng.iracing.com/data/doc/car/get)
 */
public typealias Cars = [Car]





// MARK: - Car

public struct Car: Codable {
    public let aiEnabled: Bool
    public let allowNumberColors: Bool
    public let allowNumberFont: Bool
    public let allowSponsor1: Bool
    public let allowSponsor2: Bool
    public let allowWheelColor: Bool
    public let awardExempt: Bool
    public let carDirpath: String
    public let carID: Int
    public let carName: String
    public let carNameAbbreviated: String
    public let carTypes: [CarType]
    public let carWeight: Int
    public let categories: [String]
    public let created: String
    public let freeWithSubscription: Bool
    public let hasHeadlights: Bool
    public let hasMultipleDryTireTypes: Bool
    public let hp: Int
    public let maxPowerAdjustPct: Int
    public let maxWeightPenaltyKg: Int
    public let minPowerAdjustPct: Int
    public let packageID: Int
    public let patterns: Int
    public let price: Double
    public let retired: Bool
    public let searchFilters: String
    public let sku: Int
    public let paintRules: [String: PaintRule]?
    public let carMake: String?
    public let carModel: String?
    public let siteURL: String?

    enum CodingKeys: String, CodingKey {
        case aiEnabled = "ai_enabled"
        case allowNumberColors = "allow_number_colors"
        case allowNumberFont = "allow_number_font"
        case allowSponsor1 = "allow_sponsor1"
        case allowSponsor2 = "allow_sponsor2"
        case allowWheelColor = "allow_wheel_color"
        case awardExempt = "award_exempt"
        case carDirpath = "car_dirpath"
        case carID = "car_id"
        case carName = "car_name"
        case carNameAbbreviated = "car_name_abbreviated"
        case carTypes = "car_types"
        case carWeight = "car_weight"
        case categories = "categories"
        case created = "created"
        case freeWithSubscription = "free_with_subscription"
        case hasHeadlights = "has_headlights"
        case hasMultipleDryTireTypes = "has_multiple_dry_tire_types"
        case hp = "hp"
        case maxPowerAdjustPct = "max_power_adjust_pct"
        case maxWeightPenaltyKg = "max_weight_penalty_kg"
        case minPowerAdjustPct = "min_power_adjust_pct"
        case packageID = "package_id"
        case patterns = "patterns"
        case price = "price"
        case retired = "retired"
        case searchFilters = "search_filters"
        case sku = "sku"
        case paintRules = "paint_rules"
        case carMake = "car_make"
        case carModel = "car_model"
        case siteURL = "site_url"
    }

    public init(aiEnabled: Bool, allowNumberColors: Bool, allowNumberFont: Bool, allowSponsor1: Bool, allowSponsor2: Bool, allowWheelColor: Bool, awardExempt: Bool, carDirpath: String, carID: Int, carName: String, carNameAbbreviated: String, carTypes: [CarType], carWeight: Int, categories: [String], created: String, freeWithSubscription: Bool, hasHeadlights: Bool, hasMultipleDryTireTypes: Bool, hp: Int, maxPowerAdjustPct: Int, maxWeightPenaltyKg: Int, minPowerAdjustPct: Int, packageID: Int, patterns: Int, price: Double, retired: Bool, searchFilters: String, sku: Int, paintRules: [String: PaintRule]?, carMake: String?, carModel: String?, siteURL: String?) {
        self.aiEnabled = aiEnabled
        self.allowNumberColors = allowNumberColors
        self.allowNumberFont = allowNumberFont
        self.allowSponsor1 = allowSponsor1
        self.allowSponsor2 = allowSponsor2
        self.allowWheelColor = allowWheelColor
        self.awardExempt = awardExempt
        self.carDirpath = carDirpath
        self.carID = carID
        self.carName = carName
        self.carNameAbbreviated = carNameAbbreviated
        self.carTypes = carTypes
        self.carWeight = carWeight
        self.categories = categories
        self.created = created
        self.freeWithSubscription = freeWithSubscription
        self.hasHeadlights = hasHeadlights
        self.hasMultipleDryTireTypes = hasMultipleDryTireTypes
        self.hp = hp
        self.maxPowerAdjustPct = maxPowerAdjustPct
        self.maxWeightPenaltyKg = maxWeightPenaltyKg
        self.minPowerAdjustPct = minPowerAdjustPct
        self.packageID = packageID
        self.patterns = patterns
        self.price = price
        self.retired = retired
        self.searchFilters = searchFilters
        self.sku = sku
        self.paintRules = paintRules
        self.carMake = carMake
        self.carModel = carModel
        self.siteURL = siteURL
    }
    
    
    
    
    
    // MARK: - CarType
    
    public struct CarType: Codable {
        public let carType: String

        enum CodingKeys: String, CodingKey {
            case carType = "car_type"
        }

        public init(carType: String) {
            self.carType = carType
        }
    }
    
    
    
    
    
    // MARK: - PaintRule
    
    public struct PaintRule: Codable {
        public let paintCarAvailable: Bool
        public let color1: String
        public let color2: String
        public let color3: String
        public let sponsor1Available: Bool
        public let sponsor2Available: Bool
        public let sponsor1: String
        public let sponsor2: String
        public let paintWheelAvailable: Bool?
        public let wheelColor: String?
        public let rimTypeAvailable: Bool?
        public let rimType: String?
        public let allowNumberFontChanges: Bool?
        public let numberFont: String?
        public let allowNumberColorChanges: Bool?
        public let numberColor1: String?
        public let numberColor2: String?
        public let numberColor3: String?
        public let rulesExplanation: String

        enum CodingKeys: String, CodingKey {
            case paintCarAvailable = "PaintCarAvailable"
            case color1 = "Color1"
            case color2 = "Color2"
            case color3 = "Color3"
            case sponsor1Available = "Sponsor1Available"
            case sponsor2Available = "Sponsor2Available"
            case sponsor1 = "Sponsor1"
            case sponsor2 = "Sponsor2"
            case paintWheelAvailable = "PaintWheelAvailable"
            case wheelColor = "WheelColor"
            case rimTypeAvailable = "RimTypeAvailable"
            case rimType = "RimType"
            case allowNumberFontChanges = "AllowNumberFontChanges"
            case numberFont = "NumberFont"
            case allowNumberColorChanges = "AllowNumberColorChanges"
            case numberColor1 = "NumberColor1"
            case numberColor2 = "NumberColor2"
            case numberColor3 = "NumberColor3"
            case rulesExplanation = "RulesExplanation"
        }

        public init(paintCarAvailable: Bool, color1: String, color2: String, color3: String, sponsor1Available: Bool, sponsor2Available: Bool, sponsor1: String, sponsor2: String, paintWheelAvailable: Bool?, wheelColor: String?, rimTypeAvailable: Bool?, rimType: String?, allowNumberFontChanges: Bool?, numberFont: String?, allowNumberColorChanges: Bool?, numberColor1: String?, numberColor2: String?, numberColor3: String?, rulesExplanation: String) {
            self.paintCarAvailable = paintCarAvailable
            self.color1 = color1
            self.color2 = color2
            self.color3 = color3
            self.sponsor1Available = sponsor1Available
            self.sponsor2Available = sponsor2Available
            self.sponsor1 = sponsor1
            self.sponsor2 = sponsor2
            self.paintWheelAvailable = paintWheelAvailable
            self.wheelColor = wheelColor
            self.rimTypeAvailable = rimTypeAvailable
            self.rimType = rimType
            self.allowNumberFontChanges = allowNumberFontChanges
            self.numberFont = numberFont
            self.allowNumberColorChanges = allowNumberColorChanges
            self.numberColor1 = numberColor1
            self.numberColor2 = numberColor2
            self.numberColor3 = numberColor3
            self.rulesExplanation = rulesExplanation
        }
    }
}
