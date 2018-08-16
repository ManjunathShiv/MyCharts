import UIKit

extension String {    
    func size(withSystemFontSize pointSize: CGFloat) -> CGSize {
        return (self as NSString).size(withAttributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: pointSize)])
    }
}

extension CGPoint {  
    func adding(x: CGFloat) -> CGPoint { return CGPoint(x: self.x + x, y: self.y) } 
    func adding(y: CGFloat) -> CGPoint { return CGPoint(x: self.x, y: self.y + y) } 
}
