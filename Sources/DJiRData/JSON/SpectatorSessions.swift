/**
 Represents sessions, which are avilable for spectating as retrieved from the backend
 
 ## Website
 
 The data can be displayed on https://members.iracing.com/membersite/member/spectator.jsp?type=... as of 2021-07-25.
 
 ## Backend
 
 The backend-endpoint for directly loading the data is https://members.iracing.com/membersite/member/GetSpectatorSessions
 
 - `type`:  The category of races to retrieve spectatable sessions for. Can be 'oval', 'road', 'dirt\_oval' or 'dirt\_road', 'hosted' or 'league'.
 */
public struct SpectatorSessions {
    public let sessions: [SpectatorSession]
    
    public struct SpectatorSession: Codable {
        public let broadcast: Broadcast
        
        /**
         The track-ID as available in the TrackListing-object on the website.
         */
        public let trackID: Int
        
        public let privateSessionID: String
        public let minTeamDrivers: Int
        public let raceWeek: Int
        public let sessionID: Int
        public let subSessionStatus: String
        
        /**
         The series-ID as available in the SeasonListing-object on the website.
         */
        public let seriesID: Int
        
        public let maxTeamDrivers: Int
        public let qualifierMustStartRace: Int
        public let startTime: Int
        
        /**
         The category-ID as available in the CategoryListing-object on the website.
         */
        public let categoryID: Int
        
        public let sessionStatus: String
        
        /**
         The driver-change-rule as described in the DriverChangeRules-object on the website.
         */
        public let driverChangeRule: Int
        
        /**
         The season-ID as available in the SeasonListing-object on the website.
         */
        public let seasonID: Int
        
        /**
         A percent-escaped string, which is encoded twice
         */
        public let raceStatus: String
        
        /**
         The event-type as available in the EventType-object on the website.
         */
        public let eventType: Int
        
        public let subSessionID: Int
        public let driverChanges: Int
        
        enum CodingKeys: String, CodingKey {
            case broadcast = "broadcast"
            case trackID = "trackid"
            case privateSessionID = "privatesessionid"
            case minTeamDrivers = "min_team_drivers"
            case raceWeek = "race_week_num"
            case sessionID = "sessionid"
            case subSessionStatus = "subses_status"
            case seriesID = "seriesid"
            case maxTeamDrivers = "max_team_drivers"
            case qualifierMustStartRace = "qualifiermuststartrace"
            case startTime = "start_time"
            case categoryID = "catid"
            case sessionStatus = "ses_status"
            case driverChangeRule = "driver_change_rule"
            case seasonID = "seasonid"
            case raceStatus = "race_status"
            case eventType = "evttype"
            case subSessionID = "subsessionid"
            case driverChanges = "driver_changes"
        }
        
        public struct Broadcast: Codable {
            public let maxUsers: Int
            public let numberOfDrivers: Int
            public let canWatch: Bool
            public let numberOfBroadcasters: Int
            public let availableSpectatorSlots: Int
            public let numberOfSpectators: Int
            public let availableReservedBroadcasterSlots: Int
            public let canSpot: Bool
            public let numberOfSpectatorSlots: Int
            public let isBroadcaster: Bool
            public let canBroadcast: Bool
            public let subSessionID: Int
            
            enum CodingKeys: String, CodingKey {
                case maxUsers = "maxUsers"
                case numberOfDrivers = "numDrivers"
                case canWatch = "canWatch"
                case numberOfBroadcasters = "numBroadcasters"
                case availableSpectatorSlots = "availSpectatorSlots"
                case numberOfSpectators = "numSpectators"
                case availableReservedBroadcasterSlots = "availReservedBCasterSlots"
                case canSpot = "canSpot"
                case numberOfSpectatorSlots = "numSpectatorSlots"
                case isBroadcaster = "isBroadcaster"
                case canBroadcast = "canBroadcast"
                case subSessionID = "subSessionId"
            }
        }
    }
}
