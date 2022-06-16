/**
 List of seasons as retrieved via https://members-ng.iracing.com/data/series/seasons
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Series/Seasons](https://members-ng.iracing.com/data/doc/series/seasons)
 */
public typealias Seasons = [Season]

// MARK: - Season

public struct Season: Codable {
    public let active: Bool
    public let allowedSeasonMembers: UnknownType?
    public let carClassIDS: [Int]
    public let carTypes: [CarType]
    public let cautionLapsDoNotCount: Bool
    public let complete: Bool
    public let crossLicense: Bool
    public let driverChangeRule: Int
    public let driverChanges: Bool
    public let drops: Int
    public let fixedSetup: Bool
    public let greenWhiteCheckeredLimit: Int
    public let gridByClass: Bool
    public let ignoreLicenseForPractice: Bool
    public let incidentLimit: Int
    public let incidentWarnMode: Int
    public let incidentWarnParam1: Int
    public let incidentWarnParam2: Int
    public let isHeatRacing: Bool
    public let licenseGroup: Int
    public let licenseGroupTypes: [LicenseGroupType]
    public let luckyDog: Bool
    public let maxTeamDrivers: Int
    public let maxWeeks: Int
    public let minTeamDrivers: Int
    public let multiclass: Bool
    public let mustUseDiffTireTypesInRace: Bool
    public let nextRaceSession: UnknownType?
    public let numOptLaps: Int
    public let official: Bool
    public let opDuration: Int
    public let openPracticeSessionTypeID: Int
    public let qualifierMustStartRace: Bool
    public let raceWeek: Int
    public let raceWeekToMakeDivisions: Int
    public let regUserCount: Int
    public let regionCompetition: Bool
    public let restrictByMember: Bool
    public let restrictToCar: Bool
    public let restrictViewing: Bool
    public let scheduleDescription: String
    public let schedules: [Schedule]
    public let seasonID: Int
    public let seasonName: String
    public let seasonQuarter: Int
    public let seasonShortName: String
    public let seasonYear: Int
    public let sendToOpenPractice: Bool
    public let seriesID: Int
    public let startDate: String
    public let startOnQualTire: Bool
    public let startZone: Bool
    public let trackTypes: [TrackType]
    public let unsportConductRuleMode: Int
    public let regOpenMinutes: Int?
    public let rookieSeason: String?
    public let heatSesInfo: HeatSessionInfo?

    enum CodingKeys: String, CodingKey {
        case active = "active"
        case allowedSeasonMembers = "allowed_season_members"
        case carClassIDS = "car_class_ids"
        case carTypes = "car_types"
        case cautionLapsDoNotCount = "caution_laps_do_not_count"
        case complete = "complete"
        case crossLicense = "cross_license"
        case driverChangeRule = "driver_change_rule"
        case driverChanges = "driver_changes"
        case drops = "drops"
        case fixedSetup = "fixed_setup"
        case greenWhiteCheckeredLimit = "green_white_checkered_limit"
        case gridByClass = "grid_by_class"
        case ignoreLicenseForPractice = "ignore_license_for_practice"
        case incidentLimit = "incident_limit"
        case incidentWarnMode = "incident_warn_mode"
        case incidentWarnParam1 = "incident_warn_param1"
        case incidentWarnParam2 = "incident_warn_param2"
        case isHeatRacing = "is_heat_racing"
        case licenseGroup = "license_group"
        case licenseGroupTypes = "license_group_types"
        case luckyDog = "lucky_dog"
        case maxTeamDrivers = "max_team_drivers"
        case maxWeeks = "max_weeks"
        case minTeamDrivers = "min_team_drivers"
        case multiclass = "multiclass"
        case mustUseDiffTireTypesInRace = "must_use_diff_tire_types_in_race"
        case nextRaceSession = "next_race_session"
        case numOptLaps = "num_opt_laps"
        case official = "official"
        case opDuration = "op_duration"
        case openPracticeSessionTypeID = "open_practice_session_type_id"
        case qualifierMustStartRace = "qualifier_must_start_race"
        case raceWeek = "race_week"
        case raceWeekToMakeDivisions = "race_week_to_make_divisions"
        case regUserCount = "reg_user_count"
        case regionCompetition = "region_competition"
        case restrictByMember = "restrict_by_member"
        case restrictToCar = "restrict_to_car"
        case restrictViewing = "restrict_viewing"
        case scheduleDescription = "schedule_description"
        case schedules = "schedules"
        case seasonID = "season_id"
        case seasonName = "season_name"
        case seasonQuarter = "season_quarter"
        case seasonShortName = "season_short_name"
        case seasonYear = "season_year"
        case sendToOpenPractice = "send_to_open_practice"
        case seriesID = "series_id"
        case startDate = "start_date"
        case startOnQualTire = "start_on_qual_tire"
        case startZone = "start_zone"
        case trackTypes = "track_types"
        case unsportConductRuleMode = "unsport_conduct_rule_mode"
        case regOpenMinutes = "reg_open_minutes"
        case rookieSeason = "rookie_season"
        case heatSesInfo = "heat_ses_info"
    }

    public init(active: Bool, allowedSeasonMembers: UnknownType?, carClassIDS: [Int], carTypes: [CarType], cautionLapsDoNotCount: Bool, complete: Bool, crossLicense: Bool, driverChangeRule: Int, driverChanges: Bool, drops: Int, fixedSetup: Bool, greenWhiteCheckeredLimit: Int, gridByClass: Bool, ignoreLicenseForPractice: Bool, incidentLimit: Int, incidentWarnMode: Int, incidentWarnParam1: Int, incidentWarnParam2: Int, isHeatRacing: Bool, licenseGroup: Int, licenseGroupTypes: [LicenseGroupType], luckyDog: Bool, maxTeamDrivers: Int, maxWeeks: Int, minTeamDrivers: Int, multiclass: Bool, mustUseDiffTireTypesInRace: Bool, nextRaceSession: UnknownType?, numOptLaps: Int, official: Bool, opDuration: Int, openPracticeSessionTypeID: Int, qualifierMustStartRace: Bool, raceWeek: Int, raceWeekToMakeDivisions: Int, regUserCount: Int, regionCompetition: Bool, restrictByMember: Bool, restrictToCar: Bool, restrictViewing: Bool, scheduleDescription: String, schedules: [Schedule], seasonID: Int, seasonName: String, seasonQuarter: Int, seasonShortName: String, seasonYear: Int, sendToOpenPractice: Bool, seriesID: Int, startDate: String, startOnQualTire: Bool, startZone: Bool, trackTypes: [TrackType], unsportConductRuleMode: Int, regOpenMinutes: Int?, rookieSeason: String?, heatSesInfo: HeatSessionInfo?) {
        self.active = active
        self.allowedSeasonMembers = allowedSeasonMembers
        self.carClassIDS = carClassIDS
        self.carTypes = carTypes
        self.cautionLapsDoNotCount = cautionLapsDoNotCount
        self.complete = complete
        self.crossLicense = crossLicense
        self.driverChangeRule = driverChangeRule
        self.driverChanges = driverChanges
        self.drops = drops
        self.fixedSetup = fixedSetup
        self.greenWhiteCheckeredLimit = greenWhiteCheckeredLimit
        self.gridByClass = gridByClass
        self.ignoreLicenseForPractice = ignoreLicenseForPractice
        self.incidentLimit = incidentLimit
        self.incidentWarnMode = incidentWarnMode
        self.incidentWarnParam1 = incidentWarnParam1
        self.incidentWarnParam2 = incidentWarnParam2
        self.isHeatRacing = isHeatRacing
        self.licenseGroup = licenseGroup
        self.licenseGroupTypes = licenseGroupTypes
        self.luckyDog = luckyDog
        self.maxTeamDrivers = maxTeamDrivers
        self.maxWeeks = maxWeeks
        self.minTeamDrivers = minTeamDrivers
        self.multiclass = multiclass
        self.mustUseDiffTireTypesInRace = mustUseDiffTireTypesInRace
        self.nextRaceSession = nextRaceSession
        self.numOptLaps = numOptLaps
        self.official = official
        self.opDuration = opDuration
        self.openPracticeSessionTypeID = openPracticeSessionTypeID
        self.qualifierMustStartRace = qualifierMustStartRace
        self.raceWeek = raceWeek
        self.raceWeekToMakeDivisions = raceWeekToMakeDivisions
        self.regUserCount = regUserCount
        self.regionCompetition = regionCompetition
        self.restrictByMember = restrictByMember
        self.restrictToCar = restrictToCar
        self.restrictViewing = restrictViewing
        self.scheduleDescription = scheduleDescription
        self.schedules = schedules
        self.seasonID = seasonID
        self.seasonName = seasonName
        self.seasonQuarter = seasonQuarter
        self.seasonShortName = seasonShortName
        self.seasonYear = seasonYear
        self.sendToOpenPractice = sendToOpenPractice
        self.seriesID = seriesID
        self.startDate = startDate
        self.startOnQualTire = startOnQualTire
        self.startZone = startZone
        self.trackTypes = trackTypes
        self.unsportConductRuleMode = unsportConductRuleMode
        self.regOpenMinutes = regOpenMinutes
        self.rookieSeason = rookieSeason
        self.heatSesInfo = heatSesInfo
    }
    
    
    
    
    
    // MARK: - CarType
    
    public struct CarType: Codable {
        public let carType: String

        enum CodingKeys: String, CodingKey {
            case carType = "car_type"
        }

        public init(carType: String) {
            self.carType = carType
        }
    }
    
    
    
    
    
    // MARK: - HeatSessionInfo

    public struct HeatSessionInfo: Codable {
        public let heatInfoID: Int
        public let custID: Int
        public let hidden: Bool
        public let created: String
        public let heatInfoName: String
        public let heatSesInfoDescription: String
        public let maxEntrants: Int
        public let raceStyle: Int
        public let openPractice: Bool
        public let preQualPracticeLengthMinutes: Int
        public let preQualNumToMain: Int
        public let qualStyle: Int
        public let qualLengthMinutes: Int
        public let qualLaps: Int
        public let qualNumToMain: Int
        public let qualScoring: Int
        public let qualCautionType: Int
        public let qualOpenDelaySeconds: Int
        public let qualScoresChampPoints: Bool
        public let heatLengthMinutes: Int
        public let heatLaps: Int
        public let heatMaxFieldSize: Int
        public let heatNumPositionToInvert: Int
        public let heatCautionType: Int
        public let heatNumFromEachToMain: Int
        public let heatScoresChampPoints: Bool
        public let consolationNumToConsolation: Int
        public let consolationNumToMain: Int
        public let consolationFirstMaxFieldSize: Int
        public let consolationFirstSessionLengthMinutes: Int
        public let consolationFirstSessionLaps: Int
        public let consolationDeltaMaxFieldSize: Int
        public let consolationDeltaSessionLengthMinutes: Int
        public let consolationDeltaSessionLaps: Int
        public let consolationNumPositionToInvert: Int
        public let consolationScoresChampPoints: Bool
        public let consolationRunAlways: Bool
        public let preMainPracticeLengthMinutes: Int
        public let mainLengthMinutes: Int
        public let mainLaps: Int
        public let mainMaxFieldSize: Int
        public let mainNumPositionToInvert: Int
        public let heatSessionMinutesEstimate: Int

        enum CodingKeys: String, CodingKey {
            case heatInfoID = "heat_info_id"
            case custID = "cust_id"
            case hidden = "hidden"
            case created = "created"
            case heatInfoName = "heat_info_name"
            case heatSesInfoDescription = "description"
            case maxEntrants = "max_entrants"
            case raceStyle = "race_style"
            case openPractice = "open_practice"
            case preQualPracticeLengthMinutes = "pre_qual_practice_length_minutes"
            case preQualNumToMain = "pre_qual_num_to_main"
            case qualStyle = "qual_style"
            case qualLengthMinutes = "qual_length_minutes"
            case qualLaps = "qual_laps"
            case qualNumToMain = "qual_num_to_main"
            case qualScoring = "qual_scoring"
            case qualCautionType = "qual_caution_type"
            case qualOpenDelaySeconds = "qual_open_delay_seconds"
            case qualScoresChampPoints = "qual_scores_champ_points"
            case heatLengthMinutes = "heat_length_minutes"
            case heatLaps = "heat_laps"
            case heatMaxFieldSize = "heat_max_field_size"
            case heatNumPositionToInvert = "heat_num_position_to_invert"
            case heatCautionType = "heat_caution_type"
            case heatNumFromEachToMain = "heat_num_from_each_to_main"
            case heatScoresChampPoints = "heat_scores_champ_points"
            case consolationNumToConsolation = "consolation_num_to_consolation"
            case consolationNumToMain = "consolation_num_to_main"
            case consolationFirstMaxFieldSize = "consolation_first_max_field_size"
            case consolationFirstSessionLengthMinutes = "consolation_first_session_length_minutes"
            case consolationFirstSessionLaps = "consolation_first_session_laps"
            case consolationDeltaMaxFieldSize = "consolation_delta_max_field_size"
            case consolationDeltaSessionLengthMinutes = "consolation_delta_session_length_minutes"
            case consolationDeltaSessionLaps = "consolation_delta_session_laps"
            case consolationNumPositionToInvert = "consolation_num_position_to_invert"
            case consolationScoresChampPoints = "consolation_scores_champ_points"
            case consolationRunAlways = "consolation_run_always"
            case preMainPracticeLengthMinutes = "pre_main_practice_length_minutes"
            case mainLengthMinutes = "main_length_minutes"
            case mainLaps = "main_laps"
            case mainMaxFieldSize = "main_max_field_size"
            case mainNumPositionToInvert = "main_num_position_to_invert"
            case heatSessionMinutesEstimate = "heat_session_minutes_estimate"
        }

        public init(heatInfoID: Int, custID: Int, hidden: Bool, created: String, heatInfoName: String, heatSesInfoDescription: String, maxEntrants: Int, raceStyle: Int, openPractice: Bool, preQualPracticeLengthMinutes: Int, preQualNumToMain: Int, qualStyle: Int, qualLengthMinutes: Int, qualLaps: Int, qualNumToMain: Int, qualScoring: Int, qualCautionType: Int, qualOpenDelaySeconds: Int, qualScoresChampPoints: Bool, heatLengthMinutes: Int, heatLaps: Int, heatMaxFieldSize: Int, heatNumPositionToInvert: Int, heatCautionType: Int, heatNumFromEachToMain: Int, heatScoresChampPoints: Bool, consolationNumToConsolation: Int, consolationNumToMain: Int, consolationFirstMaxFieldSize: Int, consolationFirstSessionLengthMinutes: Int, consolationFirstSessionLaps: Int, consolationDeltaMaxFieldSize: Int, consolationDeltaSessionLengthMinutes: Int, consolationDeltaSessionLaps: Int, consolationNumPositionToInvert: Int, consolationScoresChampPoints: Bool, consolationRunAlways: Bool, preMainPracticeLengthMinutes: Int, mainLengthMinutes: Int, mainLaps: Int, mainMaxFieldSize: Int, mainNumPositionToInvert: Int, heatSessionMinutesEstimate: Int) {
            self.heatInfoID = heatInfoID
            self.custID = custID
            self.hidden = hidden
            self.created = created
            self.heatInfoName = heatInfoName
            self.heatSesInfoDescription = heatSesInfoDescription
            self.maxEntrants = maxEntrants
            self.raceStyle = raceStyle
            self.openPractice = openPractice
            self.preQualPracticeLengthMinutes = preQualPracticeLengthMinutes
            self.preQualNumToMain = preQualNumToMain
            self.qualStyle = qualStyle
            self.qualLengthMinutes = qualLengthMinutes
            self.qualLaps = qualLaps
            self.qualNumToMain = qualNumToMain
            self.qualScoring = qualScoring
            self.qualCautionType = qualCautionType
            self.qualOpenDelaySeconds = qualOpenDelaySeconds
            self.qualScoresChampPoints = qualScoresChampPoints
            self.heatLengthMinutes = heatLengthMinutes
            self.heatLaps = heatLaps
            self.heatMaxFieldSize = heatMaxFieldSize
            self.heatNumPositionToInvert = heatNumPositionToInvert
            self.heatCautionType = heatCautionType
            self.heatNumFromEachToMain = heatNumFromEachToMain
            self.heatScoresChampPoints = heatScoresChampPoints
            self.consolationNumToConsolation = consolationNumToConsolation
            self.consolationNumToMain = consolationNumToMain
            self.consolationFirstMaxFieldSize = consolationFirstMaxFieldSize
            self.consolationFirstSessionLengthMinutes = consolationFirstSessionLengthMinutes
            self.consolationFirstSessionLaps = consolationFirstSessionLaps
            self.consolationDeltaMaxFieldSize = consolationDeltaMaxFieldSize
            self.consolationDeltaSessionLengthMinutes = consolationDeltaSessionLengthMinutes
            self.consolationDeltaSessionLaps = consolationDeltaSessionLaps
            self.consolationNumPositionToInvert = consolationNumPositionToInvert
            self.consolationScoresChampPoints = consolationScoresChampPoints
            self.consolationRunAlways = consolationRunAlways
            self.preMainPracticeLengthMinutes = preMainPracticeLengthMinutes
            self.mainLengthMinutes = mainLengthMinutes
            self.mainLaps = mainLaps
            self.mainMaxFieldSize = mainMaxFieldSize
            self.mainNumPositionToInvert = mainNumPositionToInvert
            self.heatSessionMinutesEstimate = heatSessionMinutesEstimate
        }
    }
    
    
    
    
    
    // MARK: - LicenseGroupType
    
    public struct LicenseGroupType: Codable {
        public let licenseGroupType: Int

        enum CodingKeys: String, CodingKey {
            case licenseGroupType = "license_group_type"
        }

        public init(licenseGroupType: Int) {
            self.licenseGroupType = licenseGroupType
        }
    }
    
    
    
    
    
    // MARK: - Schedule
    
    public struct Schedule: Codable {
        public let seasonID: Int
        public let raceWeekNum: Int
        public let seriesID: Int
        public let seriesName: String
        public let seasonName: String
        public let scheduleName: String
        public let startDate: String
        public let simulatedTimeMultiplier: Int
        public let raceLapLimit: Int?
        public let raceTimeLimit: Int?
        public let startType: String
        public let restartType: String
        public let qualAttached: Bool
        public let yellowFlags: Bool
        public let specialEventType: Int?
        public let startZone: Bool
        public let track: Track
        public let weather: Weather
        public let trackState: TrackState
        public let carRestrictions: [CarRestriction]

        enum CodingKeys: String, CodingKey {
            case seasonID = "season_id"
            case raceWeekNum = "race_week_num"
            case seriesID = "series_id"
            case seriesName = "series_name"
            case seasonName = "season_name"
            case scheduleName = "schedule_name"
            case startDate = "start_date"
            case simulatedTimeMultiplier = "simulated_time_multiplier"
            case raceLapLimit = "race_lap_limit"
            case raceTimeLimit = "race_time_limit"
            case startType = "start_type"
            case restartType = "restart_type"
            case qualAttached = "qual_attached"
            case yellowFlags = "yellow_flags"
            case specialEventType = "special_event_type"
            case startZone = "start_zone"
            case track = "track"
            case weather = "weather"
            case trackState = "track_state"
            case carRestrictions = "car_restrictions"
        }

        public init(seasonID: Int, raceWeekNum: Int, seriesID: Int, seriesName: String, seasonName: String, scheduleName: String, startDate: String, simulatedTimeMultiplier: Int, raceLapLimit: Int?, raceTimeLimit: Int?, startType: String, restartType: String, qualAttached: Bool, yellowFlags: Bool, specialEventType: Int?, startZone: Bool, track: Track, weather: Weather, trackState: TrackState, carRestrictions: [CarRestriction]) {
            self.seasonID = seasonID
            self.raceWeekNum = raceWeekNum
            self.seriesID = seriesID
            self.seriesName = seriesName
            self.seasonName = seasonName
            self.scheduleName = scheduleName
            self.startDate = startDate
            self.simulatedTimeMultiplier = simulatedTimeMultiplier
            self.raceLapLimit = raceLapLimit
            self.raceTimeLimit = raceTimeLimit
            self.startType = startType
            self.restartType = restartType
            self.qualAttached = qualAttached
            self.yellowFlags = yellowFlags
            self.specialEventType = specialEventType
            self.startZone = startZone
            self.track = track
            self.weather = weather
            self.trackState = trackState
            self.carRestrictions = carRestrictions
        }
        
        
        
        
        
        // MARK: - CarRestriction
        
        public struct CarRestriction: Codable {
            public let carID: Int
            public let maxPctFuelFill: Int
            public let weightPenaltyKg: Int
            public let powerAdjustPct: Double
            public let maxDryTireSets: Int
            public let raceSetupID: Int?
            public let qualSetupID: Int?

            enum CodingKeys: String, CodingKey {
                case carID = "car_id"
                case maxPctFuelFill = "max_pct_fuel_fill"
                case weightPenaltyKg = "weight_penalty_kg"
                case powerAdjustPct = "power_adjust_pct"
                case maxDryTireSets = "max_dry_tire_sets"
                case raceSetupID = "race_setup_id"
                case qualSetupID = "qual_setup_id"
            }

            public init(carID: Int, maxPctFuelFill: Int, weightPenaltyKg: Int, powerAdjustPct: Double, maxDryTireSets: Int, raceSetupID: Int?, qualSetupID: Int?) {
                self.carID = carID
                self.maxPctFuelFill = maxPctFuelFill
                self.weightPenaltyKg = weightPenaltyKg
                self.powerAdjustPct = powerAdjustPct
                self.maxDryTireSets = maxDryTireSets
                self.raceSetupID = raceSetupID
                self.qualSetupID = qualSetupID
            }
        }
        
        
        
        
        
        // MARK: - Track
        
        public struct Track: Codable {
            public let trackID: Int
            public let trackName: String
            public let categoryID: Int
            public let category: String
            public let configName: String?

            enum CodingKeys: String, CodingKey {
                case trackID = "track_id"
                case trackName = "track_name"
                case categoryID = "category_id"
                case category = "category"
                case configName = "config_name"
            }

            public init(trackID: Int, trackName: String, categoryID: Int, category: String, configName: String?) {
                self.trackID = trackID
                self.trackName = trackName
                self.categoryID = categoryID
                self.category = category
                self.configName = configName
            }
        }
        
        
        
        
        
        // MARK: - TrackState
        
        public struct TrackState: Codable {
            public let leaveMarbles: Bool
            public let practiceRubber: Int?
            public let warmupRubber: Int?

            enum CodingKeys: String, CodingKey {
                case leaveMarbles = "leave_marbles"
                case practiceRubber = "practice_rubber"
                case warmupRubber = "warmup_rubber"
            }

            public init(leaveMarbles: Bool, practiceRubber: Int?, warmupRubber: Int?) {
                self.leaveMarbles = leaveMarbles
                self.practiceRubber = practiceRubber
                self.warmupRubber = warmupRubber
            }
        }
        
        
        
        
        
        // MARK: - Weather
        
        public struct Weather: Codable {
            public let version: Int
            public let type: Int
            public let tempUnits: Int
            public let tempValue: Int
            public let relHumidity: Int
            public let fog: Int
            public let windDir: Int
            public let windUnits: Int
            public let windValue: Int
            public let skies: Int
            public let weatherVarInitial: Int
            public let weatherVarOngoing: Int
            public let timeOfDay: Int
            public let simulatedStartTime: String
            public let simulatedTimeOffsets: [Int]
            public let simulatedTimeMultiplier: Int
            public let simulatedStartUTCTime: String

            enum CodingKeys: String, CodingKey {
                case version = "version"
                case type = "type"
                case tempUnits = "temp_units"
                case tempValue = "temp_value"
                case relHumidity = "rel_humidity"
                case fog = "fog"
                case windDir = "wind_dir"
                case windUnits = "wind_units"
                case windValue = "wind_value"
                case skies = "skies"
                case weatherVarInitial = "weather_var_initial"
                case weatherVarOngoing = "weather_var_ongoing"
                case timeOfDay = "time_of_day"
                case simulatedStartTime = "simulated_start_time"
                case simulatedTimeOffsets = "simulated_time_offsets"
                case simulatedTimeMultiplier = "simulated_time_multiplier"
                case simulatedStartUTCTime = "simulated_start_utc_time"
            }

            public init(version: Int, type: Int, tempUnits: Int, tempValue: Int, relHumidity: Int, fog: Int, windDir: Int, windUnits: Int, windValue: Int, skies: Int, weatherVarInitial: Int, weatherVarOngoing: Int, timeOfDay: Int, simulatedStartTime: String, simulatedTimeOffsets: [Int], simulatedTimeMultiplier: Int, simulatedStartUTCTime: String) {
                self.version = version
                self.type = type
                self.tempUnits = tempUnits
                self.tempValue = tempValue
                self.relHumidity = relHumidity
                self.fog = fog
                self.windDir = windDir
                self.windUnits = windUnits
                self.windValue = windValue
                self.skies = skies
                self.weatherVarInitial = weatherVarInitial
                self.weatherVarOngoing = weatherVarOngoing
                self.timeOfDay = timeOfDay
                self.simulatedStartTime = simulatedStartTime
                self.simulatedTimeOffsets = simulatedTimeOffsets
                self.simulatedTimeMultiplier = simulatedTimeMultiplier
                self.simulatedStartUTCTime = simulatedStartUTCTime
            }
        }
    }
    
    
    
    
    
    // MARK: - TrackType
    
    public struct TrackType: Codable {
        public let trackType: String

        enum CodingKeys: String, CodingKey {
            case trackType = "track_type"
        }

        public init(trackType: String) {
            self.trackType = trackType
        }
    }
}
