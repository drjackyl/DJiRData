extension Legacy {
    
    /*
     Represents sessions of teams of the logged in customer on the My Team Sessions-page.
     
     Because there are so many properties and their order is so mixed up in the response, they have been grouped
     
     ## Website
     
     The request was discovered on the My Team Sessions-page on https://members.iracing.com/membersite/member/MyTeamsActive.do
     
     ## Backend
     
     The backend-endpoint requires a GET-request to https://members.iracing.com/membersite/member/GetCustTeamSessions
     
     No parameters or request-body was discovered.
     */
    public struct CustTeamSessions {
        public let sessions: [Session]
        
        public init(
            sessions: [Session]
        ) {
            self.sessions = sessions
        }
        
        public struct Session: Codable {
            
            // MARK: Team Information
            
            public let teamID: Int
            public let teamName: String
            public let teamOwnerCustomerID: Int
            public let teamOwnerDisplayName: String
            
            
            
            
            
            // MARK: Session Information
            
            public let sessionID: Int
            public let subsessionID: Int
            public let farmID: Int
            public let pubIP: String
            public let contactPort: Int
            public let privateSessionID: String
            public let driverChangeRule: Int
            public let registrationCount: Int
            public let subsessionStatus: String
            public let privateSessionName: String
            public let startTime: Int
            
            
            
            
            
            // MARK: Session Requirements
            
            /**
             ⚠️ _Presumably, whether registration is open._
             */
            public let openRegistration: Int
            public let minTeamDrivers: Int
            public let maxTeamDrivers: Int
            public let minIRating: Int
            public let maxIRating: Int
            public let minLicense: Int
            public let maxLicense: Int
            public let passwordRequired: Int
            public let hostedPasswordRequired: Int
            
            
            
            
            
            // MARK: Event Information
            
            public let eventType: Int
            public let seriesID: Int
            public let seasonID: Int
            public let raceWeek: Int
            public let carClassID: Int
            public let carID: Int
            public let categoryID: Int
            public let trackID: Int
            
            
            
            
            
            // MARK: Car Design
            
            public let pattern: Int
            public let color1: String
            public let color2: String
            public let color3: String
            public let carNumber: String
            public let numberColor1: String
            public let numberColor2: String
            public let numberColor3: String
            public let numberFont: Int
            public let numberSlant: Int
            public let wheelColor: String
            public let wheelChrome: Int
            public let sponsor1: Int
            public let sponsor2: Int
            
            
            
            
            
            // MARK: Unclear
            
            /**
             ⚠️ _It is unclear, whether this relates to the team-owner or the customer._
             */
            public let hasDriven: Int
            
            /**
             ⚠️ _It is unclear, whether this relates to the team or the customer._
             */
            public let hasRegistered: Int
            
            /**
             ⚠️ _Presumably, whether the customer can drive in that session._
             */
            public let canDrive: Int
            
            /**
             ⚠️ _Presumably, whether the customer has driven enough (fair share) in that session._
             */
            public let hasDrivenEnough: Int
            
            /**
             ⚠️ _Presumably the maximum number of drive, who registered for the session._
             */
            public let maxRegistered: Int
            
            /**
             ⚠️ _Unknown purpose_
             */
            public let onList: Int
            
            /**
             ⚠️ _Unknown purpose_
             */
            public let onTeam: Int
            
            public init(
                teamID: Int,
                teamName: String,
                teamOwnerCustomerID: Int,
                teamOwnerDisplayName: String,
                sessionID: Int,
                subsessionID: Int,
                farmID: Int,
                pubIP: String,
                contactPort: Int,
                privateSessionID: String = "",
                driverChangeRule: Int,
                registrationCount: Int,
                subsessionStatus: String,
                privateSessionName: String,
                startTime: Int,
                openRegistration: Int,
                minTeamDrivers: Int,
                maxTeamDrivers: Int,
                minIRating: Int = -1,
                maxIRating: Int = -1,
                minLicense: Int = -1,
                maxLicense: Int = -1,
                passwordRequired: Int,
                hostedPasswordRequired: Int,
                eventType: Int,
                seriesID: Int,
                seasonID: Int,
                raceWeek: Int,
                carClassID: Int,
                carID: Int,
                categoryID: Int,
                trackID: Int,
                pattern: Int,
                color1: String,
                color2: String,
                color3: String,
                carNumber: String,
                numberColor1: String,
                numberColor2: String,
                numberColor3: String,
                numberFont: Int,
                numberSlant: Int,
                wheelColor: String,
                wheelChrome: Int,
                sponsor1: Int,
                sponsor2: Int,
                hasDriven: Int,
                hasRegistered: Int,
                canDrive: Int,
                hasDrivenEnough: Int,
                maxRegistered: Int,
                onList: Int,
                onTeam: Int
            ) {
                self.teamID = teamID
                self.teamName = teamName
                self.teamOwnerCustomerID = teamOwnerCustomerID
                self.teamOwnerDisplayName = teamOwnerDisplayName
                self.sessionID = sessionID
                self.subsessionID = subsessionID
                self.farmID = farmID
                self.pubIP = pubIP
                self.contactPort = contactPort
                self.privateSessionID = privateSessionID
                self.driverChangeRule = driverChangeRule
                self.registrationCount = registrationCount
                self.subsessionStatus = subsessionStatus
                self.privateSessionName = privateSessionName
                self.startTime = startTime
                self.openRegistration = openRegistration
                self.minTeamDrivers = minTeamDrivers
                self.maxTeamDrivers = maxTeamDrivers
                self.minIRating = minIRating
                self.maxIRating = maxIRating
                self.minLicense = minLicense
                self.maxLicense = maxLicense
                self.passwordRequired = passwordRequired
                self.hostedPasswordRequired = hostedPasswordRequired
                self.eventType = eventType
                self.seriesID = seriesID
                self.seasonID = seasonID
                self.raceWeek = raceWeek
                self.carClassID = carClassID
                self.carID = carID
                self.categoryID = categoryID
                self.trackID = trackID
                self.pattern = pattern
                self.color1 = color1
                self.color2 = color2
                self.color3 = color3
                self.carNumber = carNumber
                self.numberColor1 = numberColor1
                self.numberColor2 = numberColor2
                self.numberColor3 = numberColor3
                self.numberFont = numberFont
                self.numberSlant = numberSlant
                self.wheelColor = wheelColor
                self.wheelChrome = wheelChrome
                self.sponsor1 = sponsor1
                self.sponsor2 = sponsor2
                self.hasDriven = hasDriven
                self.hasRegistered = hasRegistered
                self.canDrive = canDrive
                self.hasDrivenEnough = hasDrivenEnough
                self.maxRegistered = maxRegistered
                self.onList = onList
                self.onTeam = onTeam
            }
            
            enum CodingKeys: String, CodingKey {
                case onList = "on_list"
                case privateSessionID = "privatesessionid"
                case numberColor3 = "number_color3"
                case raceWeek = "race_week_num"
                case minTeamDrivers = "min_team_drivers"
                case numberColor2 = "number_color2"
                case sessionID = "sessionid"
                case numberColor1 = "number_color1"
                case hostedPasswordRequired = "hosted_password_required"
                case color3 = "color3"
                case color1 = "color1"
                case color2 = "color2"
                case registrationCount = "registration_count"
                case pubIP = "pub_ip"
                case teamID = "teamid"
                case privateSessionName = "privatesessionname"
                case wheelChrome = "wheel_chrome"
                case hasDriven = "has_driven"
                case wheelColor = "wheel_color"
                case maxIRating = "maxir"
                case subsessionStatus = "subses_status"
                case numberSlant = "number_slant"
                case seriesID = "seriesid"
                case hasRegistered = "has_registered"
                case startTime = "start_time"
                case seasonID = "seasonid"
                case teamOwnerCustomerID = "custid"
                case openRegistration = "openreg"
                case carClassID = "carclassid"
                case onTeam = "on_team"
                case trackID = "trackid"
                case pattern = "pattern"
                case minIRating = "minir"
                case farmID = "farmid"
                case carNumber = "carnum"
                case carID = "carid"
                case categoryID = "catid"
                case canDrive = "can_drive"
                case driverChangeRule = "driver_change_rule"
                case eventType = "evttype"
                case sponsor2 = "sponsor2"
                case sponsor1 = "sponsor1"
                case subsessionID = "subsessionid"
                case hasDrivenEnough = "has_driven_enough"
                case maxLicense = "maxliclevel"
                case contactPort = "contact_port"
                case maxTeamDrivers = "max_team_drivers"
                case numberFont = "number_font"
                case minLicense = "minliclevel"
                case passwordRequired = "password_required"
                case teamOwnerDisplayName = "displayname"
                case maxRegistered = "max_registered"
                case teamName = "teamname"
            }
        }
    }
}
