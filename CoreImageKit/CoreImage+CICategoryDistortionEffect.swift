import CoreImage
import CoreGraphics

public extension CIImage {
	func bumpDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBumpDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _scale: NSNumber = 0
			closure!(center: &_center, radius: &_radius, scale: &_scale)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func bumpDistortionLinear(closure: ((inout center: CIVector, inout radius: NSNumber, inout angle: NSNumber, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBumpDistortionLinear")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			var _scale: NSNumber = 0
			closure!(center: &_center, radius: &_radius, angle: &_angle, scale: &_scale)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func circleSplashDistortion(closure: ((inout center: CIVector, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICircleSplashDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			closure!(center: &_center, radius: &_radius)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func circularWrap(closure: ((inout center: CIVector, inout radius: NSNumber, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICircularWrap")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			closure!(center: &_center, radius: &_radius, angle: &_angle)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func displacementDistortion(closure: ((inout displacementImage: CIImage, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDisplacementDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _displacementImage: CIImage = CIImage()
			var _scale: NSNumber = 0
			closure!(displacementImage: &_displacementImage, scale: &_scale)
			filter?.setValue(_displacementImage, forKey: "inputDisplacementImage")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func droste(closure: ((inout insetPoint0: CIVector, inout insetPoint1: CIVector, inout strands: NSNumber, inout periodicity: NSNumber, inout rotation: NSNumber, inout zoom: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDroste")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _insetPoint0: CIVector = CIVector()
			var _insetPoint1: CIVector = CIVector()
			var _strands: NSNumber = 0
			var _periodicity: NSNumber = 0
			var _rotation: NSNumber = 0
			var _zoom: NSNumber = 0
			closure!(insetPoint0: &_insetPoint0, insetPoint1: &_insetPoint1, strands: &_strands, periodicity: &_periodicity, rotation: &_rotation, zoom: &_zoom)
			filter?.setValue(_insetPoint0, forKey: "inputInsetPoint0")
			filter?.setValue(_insetPoint1, forKey: "inputInsetPoint1")
			filter?.setValue(_strands, forKey: "inputStrands")
			filter?.setValue(_periodicity, forKey: "inputPeriodicity")
			filter?.setValue(_rotation, forKey: "inputRotation")
			filter?.setValue(_zoom, forKey: "inputZoom")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func glassDistortion(closure: ((inout texture: CIImage, inout center: CIVector, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGlassDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _texture: CIImage = CIImage()
			var _center: CIVector = CIVector()
			var _scale: NSNumber = 0
			closure!(texture: &_texture, center: &_center, scale: &_scale)
			filter?.setValue(_texture, forKey: "inputTexture")
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func glassLozenge(closure: ((inout point0: CIVector, inout point1: CIVector, inout radius: NSNumber, inout refraction: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGlassLozenge")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point0: CIVector = CIVector()
			var _point1: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _refraction: NSNumber = 0
			closure!(point0: &_point0, point1: &_point1, radius: &_radius, refraction: &_refraction)
			filter?.setValue(_point0, forKey: "inputPoint0")
			filter?.setValue(_point1, forKey: "inputPoint1")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_refraction, forKey: "inputRefraction")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func holeDistortion(closure: ((inout center: CIVector, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHoleDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			closure!(center: &_center, radius: &_radius)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func lightTunnel(closure: ((inout center: CIVector, inout rotation: NSNumber, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILightTunnel")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _rotation: NSNumber = 0
			var _radius: NSNumber = 0
			closure!(center: &_center, rotation: &_rotation, radius: &_radius)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_rotation, forKey: "inputRotation")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pinchDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPinchDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _scale: NSNumber = 0
			closure!(center: &_center, radius: &_radius, scale: &_scale)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func stretchCrop(closure: ((inout size: CIVector, inout cropAmount: NSNumber, inout centerStretchAmount: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIStretchCrop")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _size: CIVector = CIVector()
			var _cropAmount: NSNumber = 0
			var _centerStretchAmount: NSNumber = 0
			closure!(size: &_size, cropAmount: &_cropAmount, centerStretchAmount: &_centerStretchAmount)
			filter?.setValue(_size, forKey: "inputSize")
			filter?.setValue(_cropAmount, forKey: "inputCropAmount")
			filter?.setValue(_centerStretchAmount, forKey: "inputCenterStretchAmount")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func torusLensDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout width: NSNumber, inout refraction: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITorusLensDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _width: NSNumber = 0
			var _refraction: NSNumber = 0
			closure!(center: &_center, radius: &_radius, width: &_width, refraction: &_refraction)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_refraction, forKey: "inputRefraction")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func twirlDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITwirlDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			closure!(center: &_center, radius: &_radius, angle: &_angle)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func vortexDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIVortexDistortion")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			closure!(center: &_center, radius: &_radius, angle: &_angle)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}