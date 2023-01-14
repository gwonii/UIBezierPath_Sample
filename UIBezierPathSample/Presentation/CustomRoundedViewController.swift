import UIKit
import SnapKit

final class CustomRoundedViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white

		let radius: CGFloat = 90
		let roundedView: CustomRoundedView = .init(percentage: 41, color: .yellow, radius: radius)
		roundedView.backgroundColor = .clear
		view.addSubview(roundedView)
		roundedView.snp.makeConstraints { make in
			make.width.equalTo(radius * 2 + 20)
			make.height.equalTo(radius * 2 + 20)
			make.center.equalToSuperview()
		}
	}
}
