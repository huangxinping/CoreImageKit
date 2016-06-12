import CoreImage
import CoreGraphics

public extension CIImage {
	func affineClamp(closure: ((inout transform: CGAffineTransform) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAffineClamp")
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

	func affineTile(closure: ((inout transform: CGAffineTransform) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAffineTile")
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

	func eightfoldReflectedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIEightfoldReflectedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func fourfoldReflectedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber, inout acuteAngle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIFourfoldReflectedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _acuteAngle: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width, acuteAngle: &_acuteAngle)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_acuteAngle, forKey: "inputAcuteAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func fourfoldRotatedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIFourfoldRotatedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func fourfoldTranslatedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber, inout acuteAngle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIFourfoldTranslatedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _acuteAngle: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width, acuteAngle: &_acuteAngle)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_acuteAngle, forKey: "inputAcuteAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func glideReflectedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGlideReflectedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func kaleidoscope(closure: ((inout count: NSNumber, inout center: CIVector, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIKaleidoscope")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _count: NSNumber = 0
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			closure!(count: &_count, center: &_center, angle: &_angle)
			filter?.setValue(_count, forKey: "inputCount")
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func opTile(closure: ((inout center: CIVector, inout scale: NSNumber, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIOpTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _scale: NSNumber = 0
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, scale: &_scale, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_scale, forKey: "inputScale")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func parallelogramTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout acuteAngle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIParallelogramTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _acuteAngle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, acuteAngle: &_acuteAngle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_acuteAngle, forKey: "inputAcuteAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func perspectiveTile(closure: ((inout topLeft: CIVector, inout topRight: CIVector, inout bottomRight: CIVector, inout bottomLeft: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPerspectiveTile")
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

	func sixfoldReflectedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISixfoldReflectedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sixfoldRotatedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISixfoldRotatedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func triangleKaleidoscope(closure: ((inout point: CIVector, inout size: NSNumber, inout rotation: NSNumber, inout decay: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITriangleKaleidoscope")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point: CIVector = CIVector()
			var _size: NSNumber = 0
			var _rotation: NSNumber = 0
			var _decay: NSNumber = 0
			closure!(point: &_point, size: &_size, rotation: &_rotation, decay: &_decay)
			filter?.setValue(_point, forKey: "inputPoint")
			filter?.setValue(_size, forKey: "inputSize")
			filter?.setValue(_rotation, forKey: "inputRotation")
			filter?.setValue(_decay, forKey: "inputDecay")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func triangleTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITriangleTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func twelvefoldReflectedTile(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITwelvefoldReflectedTile")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}