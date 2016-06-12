import CoreImage
import CoreGraphics

public extension CIImage {
	func boxBlur(closure: ((inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBoxBlur")
		print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			closure!(radius: &_radius)
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func discBlur(closure: ((inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDiscBlur")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			closure!(radius: &_radius)
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func gaussianBlur(closure: ((inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGaussianBlur")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			closure!(radius: &_radius)
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func maskedVariableBlur(closure: ((inout mask: CIImage, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMaskedVariableBlur")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _mask: CIImage = CIImage()
			var _radius: NSNumber = 0
			closure!(mask: &_mask, radius: &_radius)
			filter?.setValue(_mask, forKey: "inputMask")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func medianFilter() -> CIImage? {
		let filter = CIFilter(name: "CIMedianFilter")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func motionBlur(closure: ((inout radius: NSNumber, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMotionBlur")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			closure!(radius: &_radius, angle: &_angle)
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func noiseReduction(closure: ((inout noiseLevel: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CINoiseReduction")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _noiseLevel: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(noiseLevel: &_noiseLevel, sharpness: &_sharpness)
			filter?.setValue(_noiseLevel, forKey: "inputNoiseLevel")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func zoomBlur(closure: ((inout center: CIVector, inout amount: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIZoomBlur")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _amount: NSNumber = 0
			closure!(center: &_center, amount: &_amount)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_amount, forKey: "inputAmount")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}