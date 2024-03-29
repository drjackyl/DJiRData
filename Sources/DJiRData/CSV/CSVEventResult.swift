/**
 Represents an event-result as exported from the website
 
 ## Format
 
 The CSV-file is encoded in ASCII and consists of 2 tables:
 
 1. The first has a header + 1 row and contains information on the event.
 2. The second has a header + rows of results.
 
 A parameter exists to include the header, which is set to 1 for downloads from the website. Since the information is
 useful and the download from the website is probably the common use-case, the model reflects this.
 
 ## Data Types
 
 The decoded types are Swift primitives, hence columns, like "Fastest Lap Time" are decoded as `String` and need further
 decoding to, for example, decoder them into `TimeInterval`.
 
 If columns can have "no value", ie. technically being an empty string, their properties in the model are optionals.
 
 ## Website
 
 The CSVs can be downloaded from https://members.iracing.com/membersite/member/EventResult.do?&subsessionid=...&custid=...
 as of 2021-03-08.
 
 ## Backend
 
 The backend-endpoint for directly loading CSVs using a GET-request is https://members.iracing.com/membersite/member/GetEventResultsAsCSV
 and has the parameters
 
 - `subsessionid`: The subsession-ID
 - `simsesnum`: unknown
 - `includeSummary`: 0=false, 1=true
 */
public struct CSVEventResult {
    public let summary: Summary
    public let results: [Result]
    
    public init(
        summary: Summary,
        results: [Result]
    ) {
        self.summary = summary
        self.results = results
    }
    
    public struct Summary: Codable {
        public let startTime: String
        public let track: String
        public let series: String
        public let seasonYear: Int
        public let seasonQuarter: Int
        public let rookieSeason: String
        public let raceWeek: Int
        public let strengthOfField: Int
        public let specialEventType: String?
        
        public init(
            startTime: String,
            track: String,
            series: String,
            seasonYear: Int,
            seasonQuarter: Int,
            rookieSeason: String,
            raceWeek: Int,
            strengthOfField: Int,
            specialEventType: String? = nil
        ) {
            self.startTime = startTime
            self.track = track
            self.series = series
            self.seasonYear = seasonYear
            self.seasonQuarter = seasonQuarter
            self.rookieSeason = rookieSeason
            self.raceWeek = raceWeek
            self.strengthOfField = strengthOfField
            self.specialEventType = specialEventType
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "Start Time"
            case track = "Track"
            case series = "Series"
            case seasonYear = "Season Year"
            case seasonQuarter = "Season Quarter"
            case rookieSeason = "Rookie Season"
            case raceWeek = "Race Week"
            case strengthOfField = "Strength of Field"
            case specialEventType = "Special Event Type"
        }
    }
    
    public struct Result: Codable {
        public let finPos: Int
        public let carID: Int
        public let car: String
        public let carClassID: Int
        public let carClass: String
        public let teamID: Int
        public let customerID: Int
        public let name: String
        public let startPos: Int
        public let carNo: Int
        public let outID: Int
        public let out: String
        public let interval: String
        public let lapsLed: Int
        public let qualifyTime: String?
        public let averageLapTime: String?
        public let fastestLapTime: String?
        public let fastestLapNo: Int?
        public let lapsCompleted: Int
        public let inc: Int
        public let pts: Int
        public let clubPts: Int
        public let div: Int
        public let clubID: Int?
        public let club: String
        public let oldiRating: Int?
        public let newiRating: Int?
        public let oldLicenseLevel: Int?
        public let oldLicenseSubLevel: Int?
        public let newLicenseLevel: Int?
        public let newLicenseSubLevel: Int?
        public let seriesName: String
        public let maxFuelFillPercentage: Int
        public let weightPenaltyInKg: Int
        public let aggPts: Int
        
        public init(
            finPos: Int,
            carID: Int,
            car: String,
            carClassID: Int,
            carClass: String,
            teamID: Int,
            customerID: Int,
            name: String,
            startPos: Int,
            carNo: Int,
            outID: Int,
            out: String,
            interval: String,
            lapsLed: Int,
            qualifyTime: String? = nil,
            averageLapTime: String? = nil,
            fastestLapTime: String? = nil,
            fastestLapNo: Int? = nil,
            lapsCompleted: Int,
            inc: Int,
            pts: Int,
            clubPts: Int,
            div: Int,
            clubID: Int? = nil,
            club: String,
            oldiRating: Int? = nil,
            newiRating: Int? = nil,
            oldLicenseLevel: Int? = nil,
            oldLicenseSubLevel: Int? = nil,
            newLicenseLevel: Int? = nil,
            newLicenseSubLevel: Int? = nil,
            seriesName: String,
            maxFuelFillPercentage: Int,
            weightPenaltyInKg: Int,
            aggPts: Int
        ) {
            self.finPos = finPos
            self.carID = carID
            self.car = car
            self.carClassID = carClassID
            self.carClass = carClass
            self.teamID = teamID
            self.customerID = customerID
            self.name = name
            self.startPos = startPos
            self.carNo = carNo
            self.outID = outID
            self.out = out
            self.interval = interval
            self.lapsLed = lapsLed
            self.qualifyTime = qualifyTime
            self.averageLapTime = averageLapTime
            self.fastestLapTime = fastestLapTime
            self.fastestLapNo = fastestLapNo
            self.lapsCompleted = lapsCompleted
            self.inc = inc
            self.pts = pts
            self.clubPts = clubPts
            self.div = div
            self.clubID = clubID
            self.club = club
            self.oldiRating = oldiRating
            self.newiRating = newiRating
            self.oldLicenseLevel = oldLicenseLevel
            self.oldLicenseSubLevel = oldLicenseSubLevel
            self.newLicenseLevel = newLicenseLevel
            self.newLicenseSubLevel = newLicenseSubLevel
            self.seriesName = seriesName
            self.maxFuelFillPercentage = maxFuelFillPercentage
            self.weightPenaltyInKg = weightPenaltyInKg
            self.aggPts = aggPts
        }
        
        enum CodingKeys: String, CodingKey {
            case finPos =  "Fin Pos"
            case carID =  "Car ID"
            case car =  "Car"
            case carClassID =  "Car Class ID"
            case carClass =  "Car Class"
            case teamID =  "Team ID"
            case customerID =  "Cust ID"
            case name =  "Name"
            case startPos =  "Start Pos"
            case carNo =  "Car #"
            case outID =  "Out ID"
            case out =  "Out"
            case interval =  "Interval"
            case lapsLed =  "Laps Led"
            case qualifyTime =  "Qualify Time"
            case averageLapTime =  "Average Lap Time"
            case fastestLapTime =  "Fastest Lap Time"
            case fastestLapNo =  "Fast Lap#"
            case lapsCompleted =  "Laps Comp"
            case inc =  "Inc"
            case pts =  "Pts"
            case clubPts =  "Club Pts"
            case div =  "Div"
            case clubID =  "Club ID"
            case club =  "Club"
            case oldiRating =  "Old iRating"
            case newiRating =  "New iRating"
            case oldLicenseLevel =  "Old License Level"
            case oldLicenseSubLevel =  "Old License Sub-Level"
            case newLicenseLevel =  "New License Level"
            case newLicenseSubLevel =  "New License Sub-Level"
            case seriesName =  "Series Name"
            case maxFuelFillPercentage =  "Max Fuel Fill%"
            case weightPenaltyInKg =  "Weight Penalty (KG)"
            case aggPts =  "Agg Pts"
        }
    }
}
