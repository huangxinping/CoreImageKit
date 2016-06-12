import CoreImage
import CoreGraphics

public extension CIImage {
	func sharpenLuminance(closure: ((inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISharpenLuminance")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _sharpness: NSNumber = 0
			closure!(sharpness: &_sharpness)
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func unsharpMask(closure: ((inout radius: NSNumber, inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIUnsharpMask")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			var _intensity: NSNumber = 0
			closure!(radius: &_radius, intensity: &_intensity)
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_intensity, forKey: "inputIntensity")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}