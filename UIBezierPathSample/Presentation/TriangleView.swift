import UIKit

final class TriangleView: UIView {
	override func draw(_ rect: CGRect) {
		let path: UIBezierPath = .init()
		path.lineWidth = 24
		path.lineJoinStyle = .round
		path.usesEvenOddFillRule = true
		
		path.move(to: .init(x: 20, y: 20))
		path.addLine(to: .init(x: 120, y: 120))
		path.addLine(to: .init(x: 220, y: 20))
		path.close()
		
		UIColor.systemRed.set()
		path.stroke()
		
		UIColor.systemMint.set()
		path.fill()
	}
}
