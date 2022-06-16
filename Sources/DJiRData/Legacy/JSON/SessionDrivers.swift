/**
 Represents drivers of a session from the list of spectatable sessions as retrieved from the backend
 
 ## Website
 
 The data can be displayed by hovering over the helmet-icon of a spectator-session on https://members.iracing.com/membersite/member/spectator.jsp?type=... as of 2021-07-25.
 
 ## Backend
 
 The backend-endpoint for directly loading the data using a GET-request is https://members.iracing.com/membersite/member/GetSessionDrivers
 
 - `subsessionid`: The sub-session-ID to retrieve the drivers for.
 - `requestindex`: Unknown.
 */
public struct SessionDrivers: Codable {
    public let subSessionID: Int
    public let requestIndex: Int
    public let drivers: [Driver]
    
    public init(
        subSessionID: Int,
        requestIndex: Int,
        drivers: [Driver]
    ) {
        self.subSessionID = subSessionID
        self.requestIndex = requestIndex
        self.drivers = drivers
    }
    
    enum CodingKeys: String, CodingKey {
        case subSessionID = "subsessionid"
        case requestIndex = "requestindex"
        case drivers = "rows"
    }
    
    public struct Driver: Codable {
        
        /**
         Unknown value, presumably "driver-index", as the number starts with 1 and increments by 1 for every row.
         */
        public let di: Int
        
        /**
         The driver's name with spaces replaced by "+".
         */
        public let driverName: String
        
        /**
         Unknown value.
         */
        public let p: Int
        
        public let color1: String
        public let color2: String
        public let color3: String
        
        /**
         Unknown value.
         */
        public let ll: Int
        
        public let carID: Int
        public let customerID: Int
        
        public init(
            di: Int,
            driverName: String,
            p: Int,
            color1: String,
            color2: String,
            color3: String,
            ll: Int,
            carID: Int,
            customerID: Int
        ) {
            self.di = di
            self.driverName = driverName
            self.p = p
            self.color1 = color1
            self.color2 = color2
            self.color3 = color3
            self.ll = ll
            self.carID = carID
            self.customerID = customerID
        }
        
        enum CodingKeys: String, CodingKey {
            case di = "di"
            case driverName = "dn"
            case p = "p"
            case color1 = "c1"
            case color2 = "c2"
            case color3 = "c3"
            case ll = "ll"
            case carID = "carid"
            case customerID = "custid"
        }
    }
}
