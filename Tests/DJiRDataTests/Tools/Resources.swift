import Foundation

enum Resources {
    enum CSVEventResult {
        static let InvalidSummary = Bundle.module.url(forResource: "InvalidSummary", withExtension: "csv")!
        static let InvalidResults = Bundle.module.url(forResource: "InvalidResults", withExtension: "csv")!
        static let Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Practice = Bundle.module.url(forResource: "Oval-NoTeam-SingleClass-NoClubPoints-NoDivision-LapTimeLessThan1Minute-Unofficial-Practice", withExtension: "csv")!
        static let Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Qualify = Bundle.module.url(forResource: "Oval-NoTeam-SingleClass-NoClubPoints-NoDivision-LapTimeLessThan1Minute-Unofficial-Qualify", withExtension: "csv")!
        static let Oval_NoTeam_SingleClass_NoClubPoints_NoDivision_LapTimeLessThan1Minute_Unofficial_Race = Bundle.module.url(forResource: "Oval-NoTeam-SingleClass-NoClubPoints-NoDivision-LapTimeLessThan1Minute-Unofficial-Race", withExtension: "csv")!
        static let Road_NoTeam_MultiClass_Practice = Bundle.module.url(forResource: "Road-NoTeam-MultiClass-Practice", withExtension: "csv")!
        static let Road_NoTeam_MultiClass_Qualify = Bundle.module.url(forResource: "Road-NoTeam-MultiClass-Qualify", withExtension: "csv")!
        static let Road_NoTeam_MultiClass_Race = Bundle.module.url(forResource: "Road-NoTeam-MultiClass-Race", withExtension: "csv")!
        static let Road_NoTeam_SingleClass_Practice = Bundle.module.url(forResource: "Road-NoTeam-SingleClass-Practice", withExtension: "csv")!
        static let Road_NoTeam_SingleClass_Qualify = Bundle.module.url(forResource: "Road-NoTeam-SingleClass-Qualify", withExtension: "csv")!
        static let Road_NoTeam_SingleClass_Race = Bundle.module.url(forResource: "Road-NoTeam-SingleClass-Race", withExtension: "csv")!
        static let Road_Team_MultiClass_Practice = Bundle.module.url(forResource: "Road-Team-MultiClass-Practice", withExtension: "csv")!
        static let Road_Team_MultiClass_Qualify = Bundle.module.url(forResource: "Road-Team-MultiClass-Qualify", withExtension: "csv")!
        static let Road_Team_MultiClass_Race = Bundle.module.url(forResource: "Road-Team-MultiClass-Race", withExtension: "csv")!
        static let Road_Team_SingleClass_NoClubPoints_NoDivision_Practice = Bundle.module.url(forResource: "Road-Team-SingleClass-NoClubPoints-NoDivision-Practice", withExtension: "csv")!
        static let Road_Team_SingleClass_NoClubPoints_NoDivision_Qualify = Bundle.module.url(forResource: "Road-Team-SingleClass-NoClubPoints-NoDivision-Qualify", withExtension: "csv")!
        static let Road_Team_SingleClass_NoClubPoints_NoDivision_Race = Bundle.module.url(forResource: "Road-Team-SingleClass-NoClubPoints-NoDivision-Race", withExtension: "csv")!
    }
}

extension URL {
    func load() -> Data {
        try! Data(contentsOf: self)
    }
}
