/**
 Represents one row of season-standings as exported from the website
 
 ## Format
 
 Depending on whether the query was made for the whole season or for one specific week, one column differs between the
 two:
 
 - Standings queried for a whole **season** (all weeks), contain the column **"weekscounted"**, while the column "weeks"
   is missing.
 - Standings queried for a **week**, contain the column **"week"**, while the column "weekscounted" is missing.
 
 ## Website
 
 The CSVs can be downloaded from https://members.iracing.com/membersite/member/statsseries.jsp as of 2021-03-10.
 
 ## Backend
 
 The backend-endpoint for directly loading CSVs is https://members.iracing.com/memberstats/member/GetSeasonStandings
 and has the parameters
 
 - `format`: The format of the file, so far I tried 'csv' and 'json'.
 - `seasonid`: The season-ID.
 - `carclassid`: The car-class-ID.
 - `clubid`: -1=all or club-id respectively
 - `raceweek`: -1=all or race-week respectively, counting naturally from 1 for week 1
 - `division`: -1=all or division respectively, counting naturally from 1 for division 1
 - `start`: 1 (has no effect on export)
 - `end`: 25 (has no effect on export)
 - `sort`: points (has no effect on export)
 - `order`: desc (has no effect on export)
 */
public struct CSVSeasonStandings: Codable {
    public let position: Int
    public let name: String
    public let points: Int
    public let dropped: Int
    public let clubname: String
    public let countrycode: String
    public let irating: Int
    public let avgfinish: Int
    public let topfive: Int
    public let starts: Int
    public let lapslead: Int
    public let wins: Int
    public let incidents: Int
    public let division: Int
    public let week: Int?
    public let weekscounted: Int?
    public let laps: Int
    public let poles: Int
    public let avgstart: Int
    public let custid: Int

    enum CodingKeys: String, CodingKey {
        case position = "position"
        case name = "name"
        case points = "points"
        case dropped = "dropped"
        case clubname = "clubname"
        case countrycode = "countrycode"
        case irating = "irating"
        case avgfinish = "avgfinish"
        case topfive = "topfive"
        case starts = "starts"
        case lapslead = "lapslead"
        case wins = "wins"
        case incidents = "incidents"
        case division = "division"
        case week = "week"
        case weekscounted = "weekscounted"
        case laps = "laps"
        case poles = "poles"
        case avgstart = "avgstart"
        case custid = "custid"
    }
}
