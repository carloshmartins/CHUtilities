import UIKit

public protocol Configurable { }

public extension Configurable {
    
    func with(_ configure: (inout Self) -> Void) -> Self {
        var this = self
        configure(&this)
        return this
    }
}

extension NSObject: Configurable { }
