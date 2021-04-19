/*
 Represents information about sessions as retrieved from the backend
 
 ## Not really results
 
 While the backend-API's endpoint's name is GetSeriesRaceResults, the retrieved data does not really represent results.
 It rather contains information about the sessions, like start-time, session-IDs, size and strength of field, split by
 car-classes.
 
 By convention, this package provides the data-models, which are retrievable from certain endpoints. To keep this easily
 identifiable, the names are according to those endpoints.
 
 ## Website
 
 The data can be displayed on https://members.iracing.com/membersite/member/SeriesRaceResults.do?season=... as of 2021-04-19.
 
 ## Backend
 
 The backend-endpoint for directly loading the data is https://members.iracing.com/memberstats/member/GetSeriesRaceResults and has the parameters
 
 - `seasonid`: The season-ID reflecting the season of a series.
 - `raceweek`: The raceweek to return data for. Starts counting at 0 for raceweek 1.
 */
public struct SeriesRaceResults {
    public let sessions: [SessionInfo]
    
    public struct SessionInfo: Codable {
        public let startTime: Int
        public let carClassID: Int
        public let trackID: Int
        public let sessionID: Int
        public let subSessionID: Int
        public let officialSession: Int
        public let sizeOfField: Int
        public let strengthOfField: Int
        
        enum CodingKeys: String, CodingKey {
            case startTime = "1"
            case carClassID = "2"
            case trackID = "3"
            case sessionID = "4"
            case subSessionID = "5"
            case officialSession = "6"
            case sizeOfField = "7"
            case strengthOfField = "8"
        }
    }
}
