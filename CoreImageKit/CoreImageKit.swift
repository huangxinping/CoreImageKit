import CoreImage
import UIKit

public extension CIImage {
	var toUIImage: UIImage? {
		return UIImage(CIImage: self)
	}
}
