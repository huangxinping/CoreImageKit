import CoreImage
import CoreGraphics

public extension CIImage {
	func circularScreen(closure: ((inout center: CIVector, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICircularScreen")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func cMYKHalftone(closure: ((inout center: CIVector, inout width: NSNumber, inout angle: NSNumber, inout sharpness: NSNumber, inout gCR: NSNumber, inout uCR: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICMYKHalftone")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _width: NSNumber = 0
			var _angle: NSNumber = 0
			var _sharpness: NSNumber = 0
			var _gCR: NSNumber = 0
			var _uCR: NSNumber = 0
			closure!(center: &_center, width: &_width, angle: &_angle, sharpness: &_sharpness, gCR: &_gCR, uCR: &_uCR)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
			filter?.setValue(_gCR, forKey: "inputGCR")
			filter?.setValue(_uCR, forKey: "inputUCR")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func dotScreen(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDotScreen")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func hatchedScreen(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHatchedScreen")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func lineScreen(closure: ((inout center: CIVector, inout angle: NSNumber, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILineScreen")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, angle: &_angle, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}