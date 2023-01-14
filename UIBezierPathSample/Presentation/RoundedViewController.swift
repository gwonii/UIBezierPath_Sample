import UIKit
import SnapKit

final class RoundedViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		
		let roundedView: RoundedView = .init(frame: .zero)
		roundedView.backgroundColor = .clear
		view.addSubview(roundedView)
		roundedView.snp.makeConstraints { make in
			make.size.equalTo(300)
			make.center.equalToSuperview()
		}
	}
}
