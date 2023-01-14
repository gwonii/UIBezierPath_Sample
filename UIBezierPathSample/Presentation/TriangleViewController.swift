import UIKit
import SnapKit

final class TriangleViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
	
		let triangleView: TriangleView = .init(frame: .zero)
		triangleView.backgroundColor = .white
		view.addSubview(triangleView)
		triangleView.snp.makeConstraints { make in
			make.size.equalTo(300)
			make.center.equalToSuperview()
		}
	}
}
