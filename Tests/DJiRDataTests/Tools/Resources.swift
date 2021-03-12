import Foundation

enum Resources {
}

extension URL {
    func load() -> Data {
        try! Data(contentsOf: self)
    }
}
