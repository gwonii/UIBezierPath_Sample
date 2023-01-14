import UIKit

final class CustomRoundedView: UIView {
	
	private let percentage: CGFloat
	private let color: UIColor
	private let radius: CGFloat
	
	init(percentage: CGFloat, color: UIColor ,radius: CGFloat) {
		self.percentage = percentage
		self.color = color
		self.radius = radius
		super.init(frame: .zero)
	}
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func draw(_ rect: CGRect) {
		let basePath: UIBezierPath = .init(
			arcCenter: .init(x: rect.midX, y: rect.midY),
			radius: radius,
			startAngle: 180 * CGFloat.pi / 180,
			endAngle: 360 * CGFloat.pi / 180,
			clockwise: true
		)
		basePath.lineWidth = 18
		basePath.lineCapStyle = .round
		UIColor.lightGray.set()
		basePath.stroke()
		
		let targetPath: UIBezierPath = .init(
			arcCenter: .init(x: rect.midX, y: rect.midY),
			radius: radius,
			startAngle: 180 * CGFloat.pi / 180,
			endAngle: (180 + (1.8 * percentage)) * CGFloat.pi / 180,
			clockwise: true
		)
		targetPath.lineWidth = 18
		targetPath.lineCapStyle = .round
		color.set()
		targetPath.stroke()
	}
}
