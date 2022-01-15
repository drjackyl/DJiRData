/**
 Represents the section Career Stats on a member's profile-page.
 
 ## Website
 
 The data can be displayed on a member's profile-page on https://members.iracing.com/membersite/member/CareerStats.do
 
 ## Backend
 
 The backend-endpoint requires a GET-request to https://members.iracing.com/memberstats/member/GetCareerStats and has
 the parameters
 
 - `custid`, the member's customer-ID.
 */
public struct CareerStats {
    public let stats: [Stats]
    
    public init(
        stats: [Stats]
    ) {
        self.stats = stats
    }
    
    public struct Stats: Codable {
        public let wins: Int
        public let totalClubPoints: Int
        public let winPercentage: Double
        public let poles: Int
        public let averageStart: Int
        public let averageFinish: Int
        public let top5Percentage: Double
        public let totalLaps: Int
        public let averageIncsPerRace: Double
        public let averagePointsPerRace: Int
        public let lapsLed: Int
        public let top5: Int
        public let lapsLedPercentage: Double
        public let category: String
        public let starts: Int
        
        public init(
            wins: Int,
            totalClubPoints: Int,
            winPercentage: Double,
            poles: Int,
            averageStart: Int,
            averageFinish: Int,
            top5Percentage: Double,
            totalLaps: Int,
            averageIncsPerRace: Double,
            averagePointsPerRace: Int,
            lapsLed: Int,
            top5: Int,
            lapsLedPercentage: Double,
            category: String,
            starts: Int
        ) {
            self.wins = wins
            self.totalClubPoints = totalClubPoints
            self.winPercentage = winPercentage
            self.poles = poles
            self.averageStart = averageStart
            self.averageFinish = averageFinish
            self.top5Percentage = top5Percentage
            self.totalLaps = totalLaps
            self.averageIncsPerRace = averageIncsPerRace
            self.averagePointsPerRace = averagePointsPerRace
            self.lapsLed = lapsLed
            self.top5 = top5
            self.lapsLedPercentage = lapsLedPercentage
            self.category = category
            self.starts = starts
        }
        
        enum CodingKeys: String, CodingKey {
            case wins = "wins"
            case totalClubPoints = "totalclubpoints"
            case winPercentage = "winPerc"
            case poles = "poles"
            case averageStart = "avgStart"
            case averageFinish = "avgFinish"
            case top5Percentage = "top5Perc"
            case totalLaps = "totalLaps"
            case averageIncsPerRace = "avgIncPerRace"
            case averagePointsPerRace = "avgPtsPerRace"
            case lapsLed = "lapsLed"
            case top5 = "top5"
            case lapsLedPercentage = "lapsLedPerc"
            case category = "category"
            case starts = "starts"
        }
    }
}
