import CoreImage
import CoreGraphics

public extension CIImage {
	func areaAverage(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaAverage")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func areaHistogram(closure: ((inout extent: CIVector, inout scale: NSNumber, inout count: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaHistogram")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			var _scale: NSNumber = 0
			var _count: NSNumber = 0
			closure!(extent: &_extent, scale: &_scale, count: &_count)
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_scale, forKey: "inputScale")
			filter?.setValue(_count, forKey: "inputCount")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func areaMaximum(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaMaximum")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func areaMaximumAlpha(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaMaximumAlpha")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func areaMinimum(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaMinimum")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func areaMinimumAlpha(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAreaMinimumAlpha")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func columnAverage(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColumnAverage")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func histogramDisplayFilter(closure: ((inout height: NSNumber, inout highLimit: NSNumber, inout lowLimit: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHistogramDisplayFilter")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _height: NSNumber = 0
			var _highLimit: NSNumber = 0
			var _lowLimit: NSNumber = 0
			closure!(height: &_height, highLimit: &_highLimit, lowLimit: &_lowLimit)
			filter?.setValue(_height, forKey: "inputHeight")
			filter?.setValue(_highLimit, forKey: "inputHighLimit")
			filter?.setValue(_lowLimit, forKey: "inputLowLimit")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func rowAverage(closure: ((inout extent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIRowAverage")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _extent: CIVector = CIVector()
			closure!(extent: &_extent)
			filter?.setValue(_extent, forKey: "inputExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}