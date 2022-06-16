/**
 Represents all subsessions (splits), which exist alongside a given subsession-ID.
 
 ## Website
 
 The data can be displayed, when viewing an event-result on https://members.iracing.com/membersite/member/EventResult.do
 and hovering over the "R|Splits"-button at the top.
 
 ## Backend
 
 The backend-endpoint requires a POST-request to https://members.iracing.com/membersite/member/GetAllSubsessions
 
 ### Parameters
 
 - `subsessionid`, any subsession-ID of the session to get all other subsessions (splits) in the session for.

 ### POST request body

 Form-URL-encoded

 - `a`, unknown use, was set to null, when discovered, removing it doesn't break it.
 */
public struct AllSubsessions {
    public let subsessions: [Subsession]
    
    public init(
        subsessions: [Subsession]
    ) {
        self.subsessions = subsessions
    }
    
    public struct Subsession: Codable {
        public let subsessionID: Int
        
        public init(
            subsessionID: Int
        ) {
            self.subsessionID = subsessionID
        }
        
        enum CodingKeys: String, CodingKey {
            case subsessionID = "subsessionid"
        }
    }
}
