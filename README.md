# DJiRData

DrJackyl's Swift Package for iRacing-Data provides models and logic to decode data available for [iRacing](https://www.iracing.com) via the "new" Data-API as well as the legacy website-API. Its scope is to specify raw decodable models and convenience-logic to decode respective data into such models. Retrieving and querying the data should be part of other packages.

## Supported NG-Data

In the following you can see all supported endpoints available via members-ng.iracing.com/data.

| Endpoint                                                                              | DJiRData-Type    | Path                                                                            |
| ------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------------------------- |
| [/car/assets](https://members-ng.iracing.com/data/doc/car/assets)                     | CarAssetsList    | [NG/car/CarAssets.swift](Sources/DJiRData/NG/car/CarAssets.swift)               |
| [/car/get](https://members-ng.iracing.com/data/doc/car/get)                           | Cars             | [NG/car/Car.swift](Sources/DJiRData/NG/car/Car.swift)                           |
| [/carclass/get](https://members-ng.iracing.com/data/doc/carclass/get)                 | CarClasses       | [NG/carclass/CarClass.swift](Sources/DJiRData/NG/carclass/CarClass.swift)       |
| [/constants/categories](https://members-ng.iracing.com/data/doc/constants/categories) | Categories       | [NG/constants/Categories.swift](Sources/DJiRData/NG/constants/Categories.swift) |
| [/constants/divisions](https://members-ng.iracing.com/data/doc/constants/divisions)   | Divisions        | [NG/constants/Divisions.swift](Sources/DJiRData/NG/constants/Divisions.swift)   |
| [/constants/event\_types](https://members-ng.iracing.com/data/doc/constants/event)    | EventTypes       | [NG/constants/EventTypes.swift](Sources/DJiRData/NG/constants/EventTypes.swift) |
| [/league](https://members-ng.iracing.com/data/doc/league)                             | -                | -                                                                               |
| [/lookup/get](https://members-ng.iracing.com/data/doc/lookup/get)                     | LookupCategories | [NG/lookup/Lookup.swift](Sources/DJiRData/NG/lookup/Lookup.swift)               |
| [/lookup/licenses](https://members-ng.iracing.com/data/doc/lookup/licenses)           | Licenses         | [NG/lookup/Licenses.swift](Sources/DJiRData/NG/lookup/Licenses.swift)           |
| [/member](https://members-ng.iracing.com/data/doc/member)                             | -                | -                                                                               |
| [/results](https://members-ng.iracing.com/data/doc/results)                           | -                | -                                                                               |
| [/series/assets](https://members-ng.iracing.com/data/doc/series/assets)               | SeriesAssetsList | [NG/series/SeriesAssets.swift](Sources/DJiRData/NG/series/SeriesAssets.swift)   |
| [/series/get](https://members-ng.iracing.com/data/doc/series/get)                     | SeriesList       | [NG/series/Series.swift](Sources/DJiRData/NG/series/Series.swift)               |
| [/series/seasons](https://members-ng.iracing.com/data/doc/series/seasons)             | Seasons          | [NG/series/Seasons.swift](Sources/DJiRData/NG/series/Seasons.swift)             |
| [/series/stats\_series](https://members-ng.iracing.com/data/doc/series/stats)         | SeriesStatsList  | [NG/series/SeriesStats.swift](Sources/DJiRData/NG/series/SeriesStats.swift)     |
| [/stats](https://members-ng.iracing.com/data/doc/stats)                               | -                | -                                                                               |
| [/team](https://members-ng.iracing.com/data/doc/team)                                 | -                | -                                                                               |
| [/track/assets](https://members-ng.iracing.com/data/doc/track/assets)                 | TrackAssetsList  | [NG/track/TrackAssets.swift](Sources/DJiRData/NG/track/TrackAssets.swift)       |
| [/track/get](https://members-ng.iracing.com/data/doc/track/get)                       | Tracks           | [NG/track/Track.swift](Sources/DJiRData/NG/track/Track.swift)                   |

## Supported Legacy Data

In the following table you can see all disocvered endpoints, their respective type in DJiRData (if it already exists), the format of the response-body as well as the URL, the endpoint has been discovered on. The latter does not mean, this is only URL to find the endpoint. It's just the one, I saw it at.

| Endpoint                            | DJiRData-Type          | Fromat       | Discovered on |
| ----------------------------------- | ---------------------- | :----------: | ------------- |
| GetAllSubsessions                   | AllSubsessions         | JSON         | [EventResult.do](https://members.iracing.com/membersite/member/EventResult.do) |
| GetCareerStats                      | CareerStats            | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetCarsDriven                       | CarsDriven             | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetChartData                        | ChartData              | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetCustTeamSessions                 | CustTeamSessions       | JSON         | [MyTeamsActive.do](https://members.iracing.com/membersite/member/MyTeamsActive.do) |
| GetDriverCounts                     | DriverCounts           | JSON         | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetDriverStats                      | -                      | JSON/Generic | [DriverLookup.do](https://members.iracing.com/membersite/member/DriverLookup.do) |
| GetDriverStatus                     | -                      | JSON         | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetEventResultsAsCSV                | CSVEventResult         | CSV          | [EventResult.do](https://members.iracing.com/membersite/member/EventResult.do) |
| GetForumAnnouncementPosts           | ForumAnnouncementPosts | JSON         | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetFriendsWatched                   | -                      | JSON         | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetIgnoredLeagueRequests            | -                      | JSON         | [ignored_league_requests.jsp](https://members.iracing.com/membersite/member/ignored_league_requests.jsp) |
| GetLaps                             | Laps                   | JSON         | [eventresult_laps.jsp](https://members.iracing.com/membersite/member/eventresult_laps.jsp) |
| GetLapChart                         | LapChart               | JSON         | [eventresult_lapchart.jsp](https://members.iracing.com/membersite/member/eventresult_lapchart.jsp) |
| GetLastRacesStats                   | -                      | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetLastSeries                       | LastSeries             | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetLeagueDirectory                  | -                      | JSON/Generic | [LeagueDirectory.do](https://members.iracing.com/membersite/member/LeagueDirectory.do) |
| ?                                   | -                      | ?            | [LeagueInvites.do](https://members.iracing.com/membersite/member/LeagueInvites.do) |
| GetLeagueSessions                   | -                      | JSON         | [LeagueSessions.do](https://members.iracing.com/membersite/member/LeagueSessions.do) |
| GetMember                           | -                      | JSON         | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetMembersDivision                  | -                      | JSON         | [statsseries.jsp](https://members.iracing.com/membersite/member/statsseries.jsp) |
| GetOpenSessions                     | -                      | JSON/Generic | [SeriesSessions.do](https://members.iracing.com/membersite/member/SeriesSessions.do) |
| GetOpenSessionDrivers               | -                      | JSON         | [SeriesSessions.do](https://members.iracing.com/membersite/member/SeriesSessions.do) |
| GetParticipationCredits             | -                      | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetPersonalBests                    | -                      | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |
| GetPrivateSessionResults            | -                      | JSON/Generic | [hostedresults.jsp](https://members.iracing.com/membersite/member/hostedresults.jsp) |
| GetResults (discouraged)            | -                      | JSON/Generic | [results.jsp](https://members.iracing.com/membersite/member/results.jsp) |
| GetSeasonSchedulePDF                | -                      | PDF          | [Home.do](https://members.iracing.com/membersite/member/Home.do) |
| GetSeasons                          | -                      | JSON         | [SeriesStandings.do](https://members.iracing.com/membersite/member/SeriesStandings.do) |
| GetSeasonStandings                  | -                      | JSON/Generic | [SeriesStandings.do](https://members.iracing.com/membersite/member/SeriesStandings.do) |
| GetSeasonStandings                  | CSVSeasonStandings     | CSV          | [SeriesStandings.do](https://members.iracing.com/membersite/member/SeriesStandings.do) |
| GetSeriesRaceResults                | SeriesRaceResults      | JSON/Generic | [SeriesRaceResults.do](https://members.iracing.com/membersite/member/SeriesRaceResults.do) |
| GetSessionDrivers                   | SessionDrivers         | JSON         | [spectator.jsp](https://members.iracing.com/membersite/member/spectator.jsp) |
| GetSessionTimes                     | -                      | JSON/Generic | [SeriesSessions.do](https://members.iracing.com/membersite/member/SeriesSessions.do) |
| GetSpectatorSessions                | SpectatorSessions      | JSON         | [spectator.jsp](https://members.iracing.com/membersite/member/spectator.jsp) |
| GetSubsessionResults                | -                      | JSON         | [EventResult.do](https://members.iracing.com/membersite/member/EventResult.do) |
| GetTeamDirectory                    | -                      | JSON/Generic | [MyTeamsAll.do](https://members.iracing.com/membersite/member/MyTeamsAll.do) |
| GetTeamMembers                      | -                      | JSON         | [MyTeams.do](https://members.iracing.com/membersite/member/MyTeams.do) |
| GetTeamMembership                   | -                      | JSON         | [MyTeams.do](https://members.iracing.com/membersite/member/MyTeams.do) |
| GetTeamSessions                     | -                      | ?            | [MyTeams.do](https://members.iracing.com/membersite/member/MyTeams.do) |
| GetTeamStandings                    | -                      | JSON         | [statsseries_team.jsp](https://members.iracing.com/membersite/member/statsseries_team.jsp) |
| GetTeamStandings                    | -                      | CSV          | [statsseries_team.jsp](https://members.iracing.com/membersite/member/statsseries_team.jsp) |
| GetTeamWall                         | -                      | JSON         | [MyTeams.do](https://members.iracing.com/membersite/member/MyTeams.do) |
| GetTotalSessionJoinedCountsBySeason | -                      | (JSON)       | [Series.do](https://members.iracing.com/membersite/member/Series.do) |
| GetTournaments                      | -                      | JSON         | [tourneyresults.jsp](https://members.iracing.com/membersite/member/tourneyresults.jsp) |
| GetTournamentRoundDetails           | -                      | JSON         | [tourneyresults.jsp](https://members.iracing.com/membersite/member/tourneyresults.jsp) |
| GetWorldRecords                     | -                      | JSON/Generic | [worldrecords.jsp](https://members.iracing.com/membersite/member/worldrecords.jsp) |
| GetYearlyStats                      | -                      | JSON         | [CareerStats.do](https://members.iracing.com/membersite/member/CareerStats.do) |

## Contribution

### NG-Extension

* Get a data-sample via the API
* Convert it to Swift using quicktype.io with the following settings
  * "Structs or classes": Struct
  * Explicit CodingKey values in Codable types
  * "Code density": Normal
  * "Access level": Public
  * "Make types implement protocol": None
  * "Acronym naming style": Pascal
  * Detect maps
  * Don't treat $ref as a reference in JSON
  * Merge similar cases
* Make all sub-types nested types of the base-class
  * Add 5 newlines between the last line of the parent type and the "MARK: - ..." of the nested type
* Eventually move the typealias for the result-type to the top
  * Add a doc-comment stating the origin of the data
  * Add a paragraph "Notes from Documentation" with a copy/paste of iRacing's documentation at https://members-ng.iracing.com/data/doc 
* Replace quicktype.io's `JSONNull` by `UnknownValue`

### Legacy-Extension

You're welcome to contribute by picking one of the endpoints, which do not yet have a respective type in DJiRData, extend the package analogue to the already existing ones and create a pull request.

Requirements:

* Model-type in respective folder (CSV, JSON, JSONGeneric) analogue to the existing ones.
  * Doc-comment (Xcode markup), providing specialties, where the data can be found on the website, as well as the backend-endpoint with required parameters.
  * Explicit `CodingKeys`, even if all property-names would be sufficient.
  * Public initializer with default-value of `nil` for arguments of optional type.
  * Nested types for non-primitive properties.
  * Leafs may only be of primitive type (String, Bool, Int, Double).
  * Doc-comment (Xcode markup) on properties, which have specialties to their value-range or formatting, like POSIX-time or percent-escaped strings.
  * Eventually more meaningful names for properties, like "categoryID" for the coding-key "catid".
* API-method in IRData.swift to decode data to the respective model-type or an array of it.
* Update of README.md listing the model-type for the respective endpoint.

I'm picky on pull requests, mostly for the reason of consististency, please don't mind that. If you spot anything, like inconsistencies, please let me know as well.

### Unit Tests & Bugs

Most of the unit tests have been removed, as they were using fetched real data, which exposed information about members, like real names and customer-IDs.

Remaining unit tests cover logic or document resolution of bugs in the models.

## Examples

If Apple's Foundation is available, `IRData` and `Legacy.IRData` provide convenience logic for decoding `Data` into the respective model-objects.

Both, `IRData` and `Legacy.IRData` provide a shared default-instance `IRData.default` and `Legacy.IRData.default` respectively.

### NG

For example a list of all cars from a cached JSON-file:

```swift
do {
    let jsonData = try Data(contentsOf: URL(fileURLWithPath: "path/to/cached_cars.json"))
    let cars = try IRData.default.createCarsFromData(jsonData)
    print(cars.map { "\($0.carID): \($0.carName)" }.joined(separator: "\n"))
} catch let error {
    print(error)
}
```

### Legacy

For example event results, exported as CSV-file:

```swift
do {
    let csvData = try Data(contentsOf: URL(fileURLWithPath: "path/to/exported.csv"))
    let eventResult = try Legacy.IRData.default.createCSVEventResultFromData(csvData)
    print("\(eventResult.summary.series) at \(eventResult.summary.track)")
    print(eventResult.results.map { "\($0.finPos): \($0.name) (\($0.car))"}.joined(separator: "\n") )
} catch let error {
    print(error)
}
```

## Future

* All data available at the "new" Data-API.
* Support for legacy-data will be removed at some point and no longer exended for now.
* Better usability of the package on other platforms than Apple, better gating types, which require NSFoundation to be present.

## Breaking Changes

### &lt; v0.4

The so far available types, which were generated from the data retrieved from the endpoints exposed by the website, have been moved as nested types to a new type Legacy, eg. `Legacy.CSVEventResult` and `Legacy.IRData`.

### &lt; v0.3

The test-resources (DJiRDataTestResources) for testing decoding of real data have been removed, because they exposed member-data, like real names and customer-IDs, wich are otherwise only visible to members.

Hence, the respective unit-tests have been removed as well. I now set this up locally on my machine, where I run the tests.

### v0.1 to v0.2

In an effort to improve the type-names of API-types, mostly the main entry-points, the prefix "DJ" and, if defined, the suffix "API" is removed. While not having the "DJ"-prefix anyways seems a good idea to me, not naming it DJiRData comes from Swift's inability to fully qualify a type, which has the same name as the module, despite the Swift Package-template creating one by exactly that name. 

* The main entry-point of the API has been renamed from DJiRDataAPI to IRData.
