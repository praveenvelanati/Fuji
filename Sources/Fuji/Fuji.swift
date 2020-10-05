
import Foundation
import UIKit

public protocol SemanticComponentsTokenSystem {
    static var profileViewTokens: ProfileViewTokens { get }
}


public class ProfileViewTokens {
    public var backgroundColor: UIColor
    public var textColor: UIColor
    
    public init(bgColor: UIColor, textColor: UIColor) {
        self.backgroundColor = bgColor
        self.textColor = textColor
    }
}
