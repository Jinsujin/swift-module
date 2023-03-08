import Foundation
import LocalStorage


public struct StorageManager {
    public private(set) var text = "Storage Manager"

    public init() {
        print(LocalStorage().text)
        
    }
}
