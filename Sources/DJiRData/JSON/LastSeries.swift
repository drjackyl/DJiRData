/**
 Represents the section Last 3 Series on a member's profile-page.
 
 ## Website
 
 The data can be displayed on a member's profile-page on https://members.iracing.com/membersite/member/CareerStats.do
 
 ## Backend
 
 The backend-endpoint requires a GET-request to https://members.iracing.com/memberstats/member/GetLastSeries and has the
 parameters
 
 - `custid`, the member's customer-ID.
 */
public struct LastSeries {
    public let series: [Series]
    
    public init(
        series: [Series]
    ) {
        self.series = series
    }
    
    public struct Series: Codable {
        public init(
            championshipPoints: Int,
            weeksParticipated: Int,
            lapsLead: Int,
            laps: Int,
            averageStart: Int,
            averageFinish: Int,
            seriesID: Int,
            seasonShortName: String,
            division: Int,
            seasonID: Int,
            series: String,
            top5: Int,
            seasonName: String,
            incidents: Int,
            clubPoints: Int,
            position: Int,
            starts: Int,
            seriesShortName: String,
            carClass: Int
        ) {
            self.championshipPoints = championshipPoints
            self.weeksParticipated = weeksParticipated
            self.lapsLead = lapsLead
            self.laps = laps
            self.averageStart = averageStart
            self.averageFinish = averageFinish
            self.seriesID = seriesID
            self.seasonShortName = seasonShortName
            self.division = division
            self.seasonID = seasonID
            self.series = series
            self.top5 = top5
            self.seasonName = seasonName
            self.incidents = incidents
            self.clubPoints = clubPoints
            self.position = position
            self.starts = starts
            self.seriesShortName = seriesShortName
            self.carClass = carClass
        }
        
        public let championshipPoints: Int
        public let weeksParticipated: Int
        public let lapsLead: Int
        public let laps: Int
        public let averageStart: Int
        public let averageFinish: Int
        public let seriesID: Int
        public let seasonShortName: String
        public let division: Int
        public let seasonID: Int
        public let series: String
        public let top5: Int
        public let seasonName: String
        public let incidents: Int
        public let clubPoints: Int
        public let position: Int
        public let starts: Int
        public let seriesShortName: String
        public let carClass: Int

        enum CodingKeys: String, CodingKey {
            case championshipPoints = "champPoints"
            case weeksParticipated = "weeks"
            case lapsLead = "lapsLead"
            case laps = "laps"
            case averageStart = "avgStart"
            case averageFinish = "avgFinish"
            case seriesID = "seriesID"
            case seasonShortName = "seasonShortName"
            case division = "division"
            case seasonID = "seasonID"
            case series = "series"
            case top5 = "top5"
            case seasonName = "seasonName"
            case incidents = "incidents"
            case clubPoints = "clubPoints"
            case position = "position"
            case starts = "starts"
            case seriesShortName = "seriesShortName"
            case carClass = "carClass"
        }
    }
}
