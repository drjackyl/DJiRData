/**
 List of assets for a car as retrieved via https://members-ng.iracing.com/data/car/assets
 
 The dictionary's key-value is the String of a car-ID.
 
 ## Notes from Documentation
 
 Image paths are relative to https://images-static.iracing.com/
 
 ## Documentation
 
 - [Overall Data-API](https://members-ng.iracing.com/data/doc)
 - [Car/Assets](https://members-ng.iracing.com/data/doc/car/assets)
 */
public typealias CarAssetsList = [String: CarAssets]





// MARK: - CarAssets

public struct CarAssets: Codable {
    public let carID: Int
    public let carRules: [CarRule]
    public let detailCopy: String
    public let detailScreenShotImages: String
    public let detailTechspecsCopy: String?
    public let folder: String
    public let galleryImages: String?
    public let galleryPrefix: UnknownType?
    public let groupImage: String?
    public let groupName: UnknownType?
    public let largeImage: String
    public let logo: String?
    public let smallImage: String
    public let sponsorLogo: String?
    public let templatePath: String?

    enum CodingKeys: String, CodingKey {
        case carID = "car_id"
        case carRules = "car_rules"
        case detailCopy = "detail_copy"
        case detailScreenShotImages = "detail_screen_shot_images"
        case detailTechspecsCopy = "detail_techspecs_copy"
        case folder = "folder"
        case galleryImages = "gallery_images"
        case galleryPrefix = "gallery_prefix"
        case groupImage = "group_image"
        case groupName = "group_name"
        case largeImage = "large_image"
        case logo = "logo"
        case smallImage = "small_image"
        case sponsorLogo = "sponsor_logo"
        case templatePath = "template_path"
    }

    public init(carID: Int, carRules: [CarRule], detailCopy: String, detailScreenShotImages: String, detailTechspecsCopy: String?, folder: String, galleryImages: String?, galleryPrefix: UnknownType?, groupImage: String?, groupName: UnknownType?, largeImage: String, logo: String?, smallImage: String, sponsorLogo: String?, templatePath: String?) {
        self.carID = carID
        self.carRules = carRules
        self.detailCopy = detailCopy
        self.detailScreenShotImages = detailScreenShotImages
        self.detailTechspecsCopy = detailTechspecsCopy
        self.folder = folder
        self.galleryImages = galleryImages
        self.galleryPrefix = galleryPrefix
        self.groupImage = groupImage
        self.groupName = groupName
        self.largeImage = largeImage
        self.logo = logo
        self.smallImage = smallImage
        self.sponsorLogo = sponsorLogo
        self.templatePath = templatePath
    }
    
    
    
    
    
    // MARK:- CarRule
    
    public struct CarRule: Codable {
        public let ruleCategory: String
        public let text: String

        enum CodingKeys: String, CodingKey {
            case ruleCategory = "rule_category"
            case text = "text"
        }

        public init(ruleCategory: String, text: String) {
            self.ruleCategory = ruleCategory
            self.text = text
        }
    }
}
