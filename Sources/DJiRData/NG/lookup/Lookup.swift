/**
 Categorized list of lookups as retrieved via https://members-ng.iracing.com/data/lookup/get
 
 ## Notes from Documentation
 
 ?weather=weather_wind_speed_units&weather=weather_wind_speed_max&weather=weather_wind_speed_min&licenselevels=licenselevels
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Lookup/Get](https://members-ng.iracing.com/data/doc/lookup/get)
 */
public typealias LookupCategories = [LookupCategory]





// MARK: - LookupCategory

public struct LookupCategory: Codable {
    public let lookups: [Lookup]
    public let tag: String

    enum CodingKeys: String, CodingKey {
        case lookups = "lookups"
        case tag = "tag"
    }

    public init(lookups: [Lookup], tag: String) {
        self.lookups = lookups
        self.tag = tag
    }
    
    
    
    
    
    // MARK: - LookupElement

    public struct Lookup: Codable {
        public let lookupType: String
        public let lookupValues: [LookupValue]

        enum CodingKeys: String, CodingKey {
            case lookupType = "lookup_type"
            case lookupValues = "lookup_values"
        }

        public init(lookupType: String, lookupValues: [LookupValue]) {
            self.lookupType = lookupType
            self.lookupValues = lookupValues
        }
        
        
        
        
        
        // MARK: - LookupValue

        public struct LookupValue: Codable {
            public let value: String
            public let name: String?
            public let lookupValueDescription: String
            public let seq: Int?

            enum CodingKeys: String, CodingKey {
                case value = "value"
                case name = "name"
                case lookupValueDescription = "description"
                case seq = "seq"
            }

            public init(value: String, name: String?, lookupValueDescription: String, seq: Int?) {
                self.value = value
                self.name = name
                self.lookupValueDescription = lookupValueDescription
                self.seq = seq
            }
        }
    }
}
