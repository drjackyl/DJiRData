/**
 Event-types as directly received from https://members-ng.iracing.com/data/constants/event_types
 
 ## Notes from Documentation
 
 Constant; returned directly as an array of objects
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Constants/EventTypes](https://members-ng.iracing.com/data/doc/constants/event_types)
 */
public typealias EventTypes = [EventType]





// MARK: - EventType
public struct EventType: Codable {
    public let label: String
    public let value: Int

    enum CodingKeys: String, CodingKey {
        case label = "label"
        case value = "value"
    }

    public init(label: String, value: Int) {
        self.label = label
        self.value = value
    }
}
