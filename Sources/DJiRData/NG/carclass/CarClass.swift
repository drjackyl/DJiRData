/**
 Car-classes as received via https://members-ng.iracing.com/data/carclass/get
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [CarClass/Get](https://members-ng.iracing.com/data/doc/cacarclass/get)
 */
public typealias CarClasses = [CarClass]





// MARK: - CarClass

public struct CarClass: Codable {
    public let carClassID: Int
    public let carsInClass: [CarInClass]
    public let custID: Int
    public let name: String
    public let relativeSpeed: Int
    public let shortName: String

    enum CodingKeys: String, CodingKey {
        case carClassID = "car_class_id"
        case carsInClass = "cars_in_class"
        case custID = "cust_id"
        case name = "name"
        case relativeSpeed = "relative_speed"
        case shortName = "short_name"
    }

    public init(carClassID: Int, carsInClass: [CarInClass], custID: Int, name: String, relativeSpeed: Int, shortName: String) {
        self.carClassID = carClassID
        self.carsInClass = carsInClass
        self.custID = custID
        self.name = name
        self.relativeSpeed = relativeSpeed
        self.shortName = shortName
    }
    
    
    
    
    
    // MARK: - CarsInClass
    
    public struct CarInClass: Codable {
        public let carDirpath: String
        public let carID: Int
        public let retired: Bool

        enum CodingKeys: String, CodingKey {
            case carDirpath = "car_dirpath"
            case carID = "car_id"
            case retired = "retired"
        }

        public init(carDirpath: String, carID: Int, retired: Bool) {
            self.carDirpath = carDirpath
            self.carID = carID
            self.retired = retired
        }
    }
}

