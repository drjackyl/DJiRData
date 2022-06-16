/**
 Categories as directly received from https://members-ng.iracing.com/data/constants/categories
 
 ## Notes from Documentation
 
 Constant; returned directly as an array of objects
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Constants/Categories](https://members-ng.iracing.com/data/doc/constants/categories)
 */
public typealias Categories = [Category]





// MARK: - Constant
public struct Category: Codable {
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
