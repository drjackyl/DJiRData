/**
 Represents current counts and stats on any page
 
 ## Website
 
 The data is visible at the bottom of any iRacing-page, for example on https://members.iracing.com/membersite/member/Home.do
 
 ## Backend
 
 The backend-endpoint requires a GET-request to https://members.iracing.com/membersite/member/GetDriverCounts and has the parameters
 
 - `invokedby`, which had the value "racepanel", when discovered. I couldn't see an effect, when leaving it out.
 */
public struct DriverCounts: Codable {
    public let hasPendingFriendRequests: Bool
    public let unviewedAwardCount: Int
    public let unreadPMCount: Int
    
    /**
     ⚠️ Unknown intent and data-type
     
     When discovered, this array was empty and despite trying various things, no data was to be found in the array.
     Hence, a fallback type is being used, which can deal with unknown types.
     
     If you happen to know the use and structure of the type, I would appreciate, if you let me know or add it in a
     pull request.
     */
    public let newNotifications: [UnknownType]
    
    public let driverCounts: Counts
    
    /**
     ⚠️ Presumably, whether the PM-inbox is full.
     */
    public let isPMFull: Bool
    
    public init(
        hasPendingFriendRequests: Bool,
        unviewedAwardCount: Int,
        unreadPMCount: Int,
        newNotifications: [UnknownType],
        driverCounts: Counts,
        isPMFull: Bool
    ) {
        self.hasPendingFriendRequests = hasPendingFriendRequests
        self.unviewedAwardCount = unviewedAwardCount
        self.unreadPMCount = unreadPMCount
        self.newNotifications = newNotifications
        self.driverCounts = driverCounts
        self.isPMFull = isPMFull
    }
    
    public struct Counts: Codable {
        public let iRacersOnline: Int
        
        /**
         A formatted, percent-escaped string as displayed on the website.
         */
        public let lapCount: String
        
        public let myRacersOnline: Int
        
        public init(
            iRacersOnline: Int,
            lapCount: String,
            myRacersOnline: Int
        ) {
            self.iRacersOnline = iRacersOnline
            self.lapCount = lapCount
            self.myRacersOnline = myRacersOnline
        }
        
        enum CodingKeys: String, CodingKey {
            case iRacersOnline = "total"
            case lapCount = "lapCount"
            case myRacersOnline = "myracers"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case hasPendingFriendRequests = "friendRequests"
        case unviewedAwardCount = "unviewedAwardCount"
        case unreadPMCount = "unreadPMCount"
        case newNotifications = "newnotifications"
        case driverCounts = "driverCounts"
        case isPMFull = "pmFull"
    }
}
