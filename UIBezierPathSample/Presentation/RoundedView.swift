import UIKit

final class RoundedView: UIView {
	override func draw(_ rect: CGRect) {
		let path: UIBezierPath = .init(
			arcCenter: .init(x: rect.midX, y: rect.midY),
			radius: 90,
			startAngle: 180 * CGFloat.pi / 180,
			endAngle: 360 * CGFloat.pi / 180,
			clockwise: true
		)
		path.lineWidth = 20
		path.lineCapStyle = .round
		UIColor.lightGray.set()
		path.stroke()
		
		let path2: UIBezierPath = .init(
			arcCenter: .init(x: rect.midX, y: rect.midY),
			radius: 90,
			startAngle: 180 * CGFloat.pi / 180,
			endAngle: 320 * CGFloat.pi / 180,
			clockwise: true
		)
		path2.lineWidth = 20
		path2.lineCapStyle = .round
		UIColor.systemRed.set()
		path2.stroke()
	}
}
