import CoreImage
import CoreGraphics

public extension CIImage {
	func gaussianGradient(closure: ((inout center: CIVector, inout color0: CIColor, inout color1: CIColor, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGaussianGradient")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _radius: NSNumber = 0
			closure!(center: &_center, color0: &_color0, color1: &_color1, radius: &_radius)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func linearGradient(closure: ((inout point0: CIVector, inout point1: CIVector, inout color0: CIColor, inout color1: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILinearGradient")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point0: CIVector = CIVector()
			var _point1: CIVector = CIVector()
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(point0: &_point0, point1: &_point1, color0: &_color0, color1: &_color1)
			filter?.setValue(_point0, forKey: "inputPoint0")
			filter?.setValue(_point1, forKey: "inputPoint1")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func radialGradient(closure: ((inout center: CIVector, inout radius0: NSNumber, inout radius1: NSNumber, inout color0: CIColor, inout color1: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIRadialGradient")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius0: NSNumber = 0
			var _radius1: NSNumber = 0
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(center: &_center, radius0: &_radius0, radius1: &_radius1, color0: &_color0, color1: &_color1)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius0, forKey: "inputRadius0")
			filter?.setValue(_radius1, forKey: "inputRadius1")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func smoothLinearGradient(closure: ((inout point0: CIVector, inout point1: CIVector, inout color0: CIColor, inout color1: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISmoothLinearGradient")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point0: CIVector = CIVector()
			var _point1: CIVector = CIVector()
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(point0: &_point0, point1: &_point1, color0: &_color0, color1: &_color1)
			filter?.setValue(_point0, forKey: "inputPoint0")
			filter?.setValue(_point1, forKey: "inputPoint1")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}