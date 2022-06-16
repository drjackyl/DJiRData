extension Legacy {
    
    /**
     Represents the record of laps done by a team or driver as available in event-results.
     
     ## Website
     
     The data can be displayed by clicking on any the "Laps"-links of an event-result-page on https://members.iracing.com/membersite/member/eventresult_laps.jsp
     via https://members.iracing.com/membersite/member/EventResult.do
     
     ## Backend
     
     The backend-endpoint requires a POST-request to https://members.iracing.com/membersite/member/GetLaps and has the
     parameters
     
     ### URL-Parameters
     
     - `subsessionid`: The subsession's ID
     - `groupid`: The team's ID in case of a team-race or the customer's ID in case of a solo-race.
     - `custid`: The customer's ID in case of a team-race. Left out otherwise.
     - `simsesnum`: _Unknown (was always 0)_
     
     ### Form-URL-Encoded
     
     - `a`: _Unknown (was always null, leaving it out made no difference)_
     */
    public struct Laps: Codable {
        public let lapData: [LapData]
        public let header: Header
        public let drivers: [Driver]
        
        public init(
            lapData: [Laps.LapData],
            header: Laps.Header,
            drivers: [Laps.Driver]
        ) {
            self.lapData = lapData
            self.header = header
            self.drivers = drivers
        }
        
        enum CodingKeys: String, CodingKey {
            case lapData = "lapData"
            case header = "header"
            case drivers = "drivers"
        }
        
        public struct LapData: Codable {
            public let sessionTime: Int
            public let customerID: Int
            
            /**
             Uses a bitmask to describe things like "pitted" (=2) or "last alp" (=16384).
             */
            public let flags: Int
            
            public let lapNumber: Int
            
            public init(
                sessionTime: Int,
                customerID: Int,
                flags: Int,
                lapNumber: Int
            ) {
                self.sessionTime = sessionTime
                self.customerID = customerID
                self.flags = flags
                self.lapNumber = lapNumber
            }
            
            enum CodingKeys: String, CodingKey {
                case sessionTime = "ses_time"
                case customerID = "custid"
                case flags = "flags"
                case lapNumber = "lap_num"
            }
        }
        
        public struct Header: Codable {
            internal init(
                teamName: String,
                eventDateUTCInMillis: Int,
                trackID: Int,
                suitColor2: String,
                trackName: String,
                suitColor3: String,
                suitColor1: String,
                seasonShortName: String,
                carID: Int,
                carColor1: String,
                carColor2: String,
                carColor3: String,
                seasonName: String,
                trackConfig: String,
                numberOfLapsForSolo: Int,
                seriesName: String,
                carNumber: String,
                sessionID: Int,
                subSessionID: Int,
                numberOfLapsForQualification: Int,
                carPattern: Int,
                eventTypeName: String,
                eventType: Int,
                suitPattern: Int,
                seriesShortName: String,
                eventDate: String
            ) {
                self.teamName = teamName
                self.eventDateUTCInMillis = eventDateUTCInMillis
                self.trackID = trackID
                self.suitColor2 = suitColor2
                self.trackName = trackName
                self.suitColor3 = suitColor3
                self.suitColor1 = suitColor1
                self.seasonShortName = seasonShortName
                self.carID = carID
                self.carColor1 = carColor1
                self.carColor2 = carColor2
                self.carColor3 = carColor3
                self.seasonName = seasonName
                self.trackConfig = trackConfig
                self.numberOfLapsForSolo = numberOfLapsForSolo
                self.seriesName = seriesName
                self.carNumber = carNumber
                self.sessionID = sessionID
                self.subSessionID = subSessionID
                self.numberOfLapsForQualification = numberOfLapsForQualification
                self.carPattern = carPattern
                self.eventTypeName = eventTypeName
                self.eventType = eventType
                self.suitPattern = suitPattern
                self.seriesShortName = seriesShortName
                self.eventDate = eventDate
            }
            
            public let teamName: String
            public let eventDateUTCInMillis: Int
            public let trackID: Int
            public let suitColor2: String
            public let trackName: String
            public let suitColor3: String
            public let suitColor1: String
            public let seasonShortName: String
            public let carID: Int
            public let carColor1: String
            public let carColor2: String
            public let carColor3: String
            public let seasonName: String
            public let trackConfig: String
            public let numberOfLapsForSolo: Int
            public let seriesName: String
            public let carNumber: String
            public let sessionID: Int
            public let subSessionID: Int
            public let numberOfLapsForQualification: Int
            public let carPattern: Int
            public let eventTypeName: String
            public let eventType: Int
            public let suitPattern: Int
            public let seriesShortName: String
            public let eventDate: String
            
            enum CodingKeys: String, CodingKey {
                case teamName = "teamName"
                case eventDateUTCInMillis = "eventDateUTCMilliSecs"
                case trackID = "trackID"
                case suitColor2 = "suitColor2"
                case trackName = "trackName"
                case suitColor3 = "suitColor3"
                case suitColor1 = "suitColor1"
                case seasonShortName = "seasonShortName"
                case carID = "carid"
                case carColor1 = "carColor1"
                case carColor2 = "carColor2"
                case carColor3 = "carColor3"
                case seasonName = "seasonName"
                case trackConfig = "trackConfig"
                case numberOfLapsForSolo = "nlapsforsolo"
                case seriesName = "seriesName"
                case carNumber = "carNum"
                case sessionID = "sessionId"
                case subSessionID = "subSessionId"
                case numberOfLapsForQualification = "nlapsforqual"
                case carPattern = "carPattern"
                case eventTypeName = "eventTypeName"
                case eventType = "eventtype"
                case suitPattern = "suitPattern"
                case seriesShortName = "seriesShortName"
                case eventDate = "eventDate"
            }
        }
        
        public struct Driver: Codable {
            public let helmColor1: String
            
            /**
             _Unknown information, was always -1_
             */
            public let bestnlapsnum: Int
            
            /**
             _Unknown information, was always -1_
             */
            public let bestnlapstime: Int
            
            public let helmPattern: Int
            public let bestLapNumber: Int
            
            /**
             Provides the qualifying laptime in data of the qualification-session, otherwise is -1.
             */
            public let bestQualificationLaptime: Int
            
            public let licenseLevel: Int
            
            /**
             Provides the date-time of the qualifying lap in UTC Millis since 1970.
             */
            public let bestQualificationLapDate: Int
            
            public let displayName: String
            
            /**
             Provides the best laptime of the session. This includes qualification-sessions.
             */
            public let bestLapTime: Int
            
            public let customerID: Int
            public let bestQualificationLapNumber: Int
            public let helmColor3: String
            public let helmColor2: String
            
            public init(
                helmColor1: String,
                bestnlapsnum: Int,
                bestnlapstime: Int,
                helmPattern: Int,
                bestLapNumber: Int,
                bestQualificationLaptime: Int,
                licenseLevel: Int,
                bestQualificationLapDate: Int,
                displayName: String,
                bestLapTime: Int,
                customerID: Int,
                bestQualificationLapNumber: Int,
                helmColor3: String,
                helmColor2: String
            ) {
                self.helmColor1 = helmColor1
                self.bestnlapsnum = bestnlapsnum
                self.bestnlapstime = bestnlapstime
                self.helmPattern = helmPattern
                self.bestLapNumber = bestLapNumber
                self.bestQualificationLaptime = bestQualificationLaptime
                self.licenseLevel = licenseLevel
                self.bestQualificationLapDate = bestQualificationLapDate
                self.displayName = displayName
                self.bestLapTime = bestLapTime
                self.customerID = customerID
                self.bestQualificationLapNumber = bestQualificationLapNumber
                self.helmColor3 = helmColor3
                self.helmColor2 = helmColor2
            }
            
            enum CodingKeys: String, CodingKey {
                case helmColor1 = "helm_color1"
                case bestnlapsnum = "bestnlapsnum"
                case bestnlapstime = "bestnlapstime"
                case helmPattern = "helm_pattern"
                case bestLapNumber = "bestlapnum"
                case bestQualificationLaptime = "bestquallaptime"
                case licenseLevel = "licenselevel"
                case bestQualificationLapDate = "bestquallapat"
                case displayName = "displayname"
                case bestLapTime = "bestlaptime"
                case customerID = "custid"
                case bestQualificationLapNumber = "bestquallapnum"
                case helmColor3 = "helm_color3"
                case helmColor2 = "helm_color2"
            }
        }
    }
    
    //For enhanced model
    //LapData.flags is a bitmask
    //enum Flags: Int {
    //    case invalid = 1 << 0
    //    case pitted = 1 << 1
    //    case lastLap = 1 << 14 // Presumably
    //}
}
