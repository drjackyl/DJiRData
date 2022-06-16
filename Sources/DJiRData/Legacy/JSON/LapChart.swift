/**
 Represents the data for the lap-chart and lap-graph in event-results.
 
 ## Website
 
 The data can be displayed by clicking on the "View Lap Chart"-link or "View Lap Graph"-link of an event-result-page on https://members.iracing.com/membersite/member/eventresult_lapchart.jsp
 or https://members.iracing.com/membersite/member/eventresult_lapgraph.jsp via https://members.iracing.com/membersite/member/EventResult.do
 
 ## Backend
 
 The backend-endpoint requires a POST-request to https://members.iracing.com/membersite/member/GetLaps and has the
 parameters
 
 ### URL-Parameters
 
 - `subsessionid`: The subsession's ID
 - `carclassid`: _Presumably a filter to only retrieve the lap-chart for a specific car-class in the subsession. Though,
   when trying this, I received a 512._
 - `simsesnum`: _Unknown (was always 0)_
 
 ### Form-URL-Encoded
 
 - `a`: _Unknown (was always null, leaving it out made no difference)_
 */
public struct LapChart: Codable {
    public init(
        details: LapChart.Details,
        startingGrid: [LapChart.GridEntry],
        lapData: [LapChart.LapData]
    ) {
        self.details = details
        self.startingGrid = startingGrid
        self.lapData = lapData
    }
    
    public let details: Details
    public let startingGrid: [GridEntry]
    public let lapData: [LapData]
    
    enum CodingKeys: String, CodingKey {
        case details = "details"
        case startingGrid = "startgrid"
        case lapData = "lapdata"
    }
    
    public struct Details: Codable {
        public let eventDate: String
        public let seasonName: String
        public let privateSessionName: String
        public let seasonID: Int
        public let privateSessionID: Int
        public let seasonShortName: String
        public let seriesName: String
        public let seriesShortName: String
        public let racePanelImage: String
        public let eventTypeName: String
        public let eventType: Int
        public let officialSession: Int
        public let sessionID: Int
        public let subSessionID: Int
        public let raceWeek: Int
        
        /**
         The values show the number of laps for qualification, but it's unclear what "Avg", persumably "average" means in that context.
         */
        public let nLapsForQualAvg: Int
        
        /**
         It is unknown, what "solo" and "avg" means in the context.
         */
        public let nLapsForSoloAvg: Int
        
        public let trackID: Int
        public let eventDateUTCInMillis: Int
        public let hadDriverChanges: Bool
        public let trackName: String
        public let trackConfig: String
        
        public init(
            eventDate: String,
            seasonName: String,
            privateSessionName: String,
            seasonID: Int,
            privateSessionID: Int,
            seasonShortName: String,
            seriesName: String,
            seriesShortName: String,
            racePanelImage: String,
            eventTypeName: String,
            eventType: Int,
            officialSession: Int,
            sessionID: Int,
            subSessionID: Int,
            raceWeek: Int,
            nLapsForQualAvg: Int,
            nLapsForSoloAvg: Int,
            trackID: Int,
            eventDateUTCInMillis: Int,
            hadDriverChanges: Bool,
            trackName: String,
            trackConfig: String
        ) {
            self.eventDate = eventDate
            self.seasonName = seasonName
            self.privateSessionName = privateSessionName
            self.seasonID = seasonID
            self.privateSessionID = privateSessionID
            self.seasonShortName = seasonShortName
            self.seriesName = seriesName
            self.seriesShortName = seriesShortName
            self.racePanelImage = racePanelImage
            self.eventTypeName = eventTypeName
            self.eventType = eventType
            self.officialSession = officialSession
            self.sessionID = sessionID
            self.subSessionID = subSessionID
            self.raceWeek = raceWeek
            self.nLapsForQualAvg = nLapsForQualAvg
            self.nLapsForSoloAvg = nLapsForSoloAvg
            self.trackID = trackID
            self.eventDateUTCInMillis = eventDateUTCInMillis
            self.hadDriverChanges = hadDriverChanges
            self.trackName = trackName
            self.trackConfig = trackConfig
        }
        
        enum CodingKeys: String, CodingKey {
            case eventDate = "eventDate"
            case seasonName = "seasonName"
            case privateSessionName = "privateSessionName"
            case seasonID = "seasonID"
            case privateSessionID = "privateSessionID"
            case seasonShortName = "seasonShortName"
            case seriesName = "seriesName"
            case seriesShortName = "seriesShortName"
            case racePanelImage = "race_panel_img"
            case eventTypeName = "eventTypeName"
            case eventType = "eventType"
            case officialSession = "officialSession"
            case sessionID = "sessionId"
            case subSessionID = "subSessionId"
            case raceWeek = "raceWeek"
            case nLapsForQualAvg = "nLapsForQualAvg"
            case nLapsForSoloAvg = "nLapsForSoloAvg"
            case trackID = "trackid"
            case eventDateUTCInMillis = "eventDateUTCMilliSecs"
            case hadDriverChanges = "driverChanges"
            case trackName = "trackName"
            case trackConfig = "trackConfig"
        }
    }
    
    public struct GridEntry: Codable {
        public let customerID: Int
        public let isAI: Int
        public let displayName: String
        public let helmetPattern: Int
        public let licenseColor: String
        public let helmetColor1: String
        public let helmetColor2: String
        public let helmetColor3: String
        public let startPosition: Int
        public let fastestLapNummber: Int
        public let fastestLapTime: Int
        public let points: Int
        public let averageLapTime: Int
        public let carNumber: String
        public let numberOfIncidents: Int
        public let finishPosition: Int
        public let groupID: Int
        public let isFriend: Int
        
        /**
         Unclear what the data means in context. All values were 0
         */
        public let watch: Int
        
        public init(
            customerID: Int,
            isAI: Int,
            displayName: String,
            helmetPattern: Int,
            licenseColor: String,
            helmetColor1: String,
            helmetColor2: String,
            helmetColor3: String,
            startPosition: Int,
            fastestLapNummber: Int,
            fastestLapTime: Int,
            points: Int,
            averageLapTime: Int,
            carNumber: String,
            numberOfIncidents: Int,
            finishPosition: Int,
            groupID: Int,
            isFriend: Int,
            watch: Int
        ) {
            self.customerID = customerID
            self.isAI = isAI
            self.displayName = displayName
            self.helmetPattern = helmetPattern
            self.licenseColor = licenseColor
            self.helmetColor1 = helmetColor1
            self.helmetColor2 = helmetColor2
            self.helmetColor3 = helmetColor3
            self.startPosition = startPosition
            self.fastestLapNummber = fastestLapNummber
            self.fastestLapTime = fastestLapTime
            self.points = points
            self.averageLapTime = averageLapTime
            self.carNumber = carNumber
            self.numberOfIncidents = numberOfIncidents
            self.finishPosition = finishPosition
            self.groupID = groupID
            self.isFriend = isFriend
            self.watch = watch
        }
        
        enum CodingKeys: String, CodingKey {
            case customerID = "custid"
            case isAI = "is_ai"
            case displayName = "displayName"
            case helmetPattern = "helmetPattern"
            case licenseColor = "licenseColor"
            case helmetColor1 = "helmetColor1"
            case helmetColor2 = "helmetColor2"
            case helmetColor3 = "helmetColor3"
            case startPosition = "startPos"
            case fastestLapNummber = "fastestLapNum"
            case fastestLapTime = "fastestLapTime"
            case points = "points"
            case averageLapTime = "avgLapTime"
            case carNumber = "carnum"
            case numberOfIncidents = "numIncidents"
            case finishPosition = "finishPos"
            case groupID = "groupid"
            case isFriend = "friend"
            case watch = "watch"
        }
    }
    
    public struct LapData: Codable {
        public let lapNumber: Int
        public let customerID: Int
        public let carNumber: String
        public let sessionTime: Int
        public let flags: Int
        
        public init(
            lapNumber: Int,
            customerID: Int,
            carNumber: String,
            sessionTime: Int,
            flags: Int
        ) {
            self.lapNumber = lapNumber
            self.customerID = customerID
            self.carNumber = carNumber
            self.sessionTime = sessionTime
            self.flags = flags
        }
        
        enum CodingKeys: String, CodingKey {
            case lapNumber = "lapnum"
            case customerID = "custid"
            case carNumber = "carnum"
            case sessionTime = "sesTime"
            case flags = "flags"
        }
    }
}
