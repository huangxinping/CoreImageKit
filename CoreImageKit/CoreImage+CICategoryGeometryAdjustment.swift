import CoreImage
import CoreGraphics

public extension CIImage {
	func affineTransform(closure: ((inout transform: CGAffineTransform) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAffineTransform")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _transform: CGAffineTransform = CGAffineTransformIdentity
			closure!(transform: &_transform)
			filter?.setValue(NSValue(CGAffineTransform: _transform), forKey: "inputTransform")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func crop(closure: ((inout rectangle: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICrop")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _rectangle: CIVector = CIVector()
			closure!(rectangle: &_rectangle)
			filter?.setValue(_rectangle, forKey: "inputRectangle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func lanczosScaleTransform(closure: ((inout scale: NSNumber, inout aspectRatio: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILanczosScaleTransform")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _scale: NSNumber = 0
			var _aspectRatio: NSNumber = 0
			closure!(scale: &_scale, aspectRatio: &_aspectRatio)
			filter?.setValue(_scale, forKey: "inputScale")
			filter?.setValue(_aspectRatio, forKey: "inputAspectRatio")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func perspectiveCorrection(closure: ((inout topLeft: CIVector, inout topRight: CIVector, inout bottomRight: CIVector, inout bottomLeft: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPerspectiveCorrection")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _topLeft: CIVector = CIVector()
			var _topRight: CIVector = CIVector()
			var _bottomRight: CIVector = CIVector()
			var _bottomLeft: CIVector = CIVector()
			closure!(topLeft: &_topLeft, topRight: &_topRight, bottomRight: &_bottomRight, bottomLeft: &_bottomLeft)
			filter?.setValue(_topLeft, forKey: "inputTopLeft")
			filter?.setValue(_topRight, forKey: "inputTopRight")
			filter?.setValue(_bottomRight, forKey: "inputBottomRight")
			filter?.setValue(_bottomLeft, forKey: "inputBottomLeft")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func perspectiveTransform(closure: ((inout topLeft: CIVector, inout topRight: CIVector, inout bottomRight: CIVector, inout bottomLeft: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPerspectiveTransform")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _topLeft: CIVector = CIVector()
			var _topRight: CIVector = CIVector()
			var _bottomRight: CIVector = CIVector()
			var _bottomLeft: CIVector = CIVector()
			closure!(topLeft: &_topLeft, topRight: &_topRight, bottomRight: &_bottomRight, bottomLeft: &_bottomLeft)
			filter?.setValue(_topLeft, forKey: "inputTopLeft")
			filter?.setValue(_topRight, forKey: "inputTopRight")
			filter?.setValue(_bottomRight, forKey: "inputBottomRight")
			filter?.setValue(_bottomLeft, forKey: "inputBottomLeft")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func perspectiveTransformWithExtent(closure: ((inout extent: CIVector, inout topLeft: CIVector, inout topRight: CIVector, inout bottomRight: CIVector, inout bottomLeft: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPerspectiveTransformWithExtent")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			var _topLeft: CIVector = CIVector()
			var _topRight: CIVector = CIVector()
			var _bottomRight: CIVector = CIVector()
			var _bottomLeft: CIVector = CIVector()
			closure!(extent: &_extent, topLeft: &_topLeft, topRight: &_topRight, bottomRight: &_bottomRight, bottomLeft: &_bottomLeft)
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_topLeft, forKey: "inputTopLeft")
			filter?.setValue(_topRight, forKey: "inputTopRight")
			filter?.setValue(_bottomRight, forKey: "inputBottomRight")
			filter?.setValue(_bottomLeft, forKey: "inputBottomLeft")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func straightenFilter(closure: ((inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIStraightenFilter")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _angle: NSNumber = 0
			closure!(angle: &_angle)
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}