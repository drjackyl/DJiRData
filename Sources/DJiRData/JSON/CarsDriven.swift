/**
 Represents a list of driven cars (?) as an array of car-IDs.
 
 ## Website
 
 The request was discovered on the pofile-page on https://members.iracing.com/membersite/member/CareerStats.do but I
 did not figure out its use.
 
 ## Backend
 
 The backend-endpoint requires a GET-request to https://members.iracing.com/memberstats/member/GetCarsDriven and has
 the parameter
 
 - `custid`, the member's customer-ID.
 */
public struct CarsDriven {
    public let carIDs: [Int]
    
    public init(
        carIDs: [Int]
    ) {
        self.carIDs = carIDs
    }
    
    // There's no coding-keys, as the received data actually is an Array<Int>.
}
