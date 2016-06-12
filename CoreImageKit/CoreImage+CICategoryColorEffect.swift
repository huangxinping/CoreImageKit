import CoreImage
import CoreGraphics

public extension CIImage {
	func colorCrossPolynomial(closure: ((inout redCoefficients: CIVector, inout greenCoefficients: CIVector, inout blueCoefficients: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorCrossPolynomial")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _redCoefficients: CIVector = CIVector()
			var _greenCoefficients: CIVector = CIVector()
			var _blueCoefficients: CIVector = CIVector()
			closure!(redCoefficients: &_redCoefficients, greenCoefficients: &_greenCoefficients, blueCoefficients: &_blueCoefficients)
			filter?.setValue(_redCoefficients, forKey: "inputRedCoefficients")
			filter?.setValue(_greenCoefficients, forKey: "inputGreenCoefficients")
			filter?.setValue(_blueCoefficients, forKey: "inputBlueCoefficients")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorCube(closure: ((inout cubeDimension: NSNumber, inout cubeData: NSData) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorCube")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _cubeDimension: NSNumber = 0
			var _cubeData: NSData = NSData()
			closure!(cubeDimension: &_cubeDimension, cubeData: &_cubeData)
			filter?.setValue(_cubeDimension, forKey: "inputCubeDimension")
			filter?.setValue(_cubeData, forKey: "inputCubeData")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorCubeWithColorSpace(closure: ((inout cubeDimension: NSNumber, inout cubeData: NSData, inout colorSpace: NSObject) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorCubeWithColorSpace")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _cubeDimension: NSNumber = 0
			var _cubeData: NSData = NSData()
			var _colorSpace: NSObject = NSObject()
			closure!(cubeDimension: &_cubeDimension, cubeData: &_cubeData, colorSpace: &_colorSpace)
			filter?.setValue(_cubeDimension, forKey: "inputCubeDimension")
			filter?.setValue(_cubeData, forKey: "inputCubeData")
			filter?.setValue(_colorSpace, forKey: "inputColorSpace")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorInvert() -> CIImage? {
		let filter = CIFilter(name: "CIColorInvert")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorMap(closure: ((inout gradientImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorMap")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _gradientImage: CIImage = CIImage()
			closure!(gradientImage: &_gradientImage)
			filter?.setValue(_gradientImage, forKey: "inputGradientImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorMonochrome(closure: ((inout color: CIColor, inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorMonochrome")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _intensity: NSNumber = 0
			closure!(color: &_color, intensity: &_intensity)
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_intensity, forKey: "inputIntensity")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorPosterize(closure: ((inout levels: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorPosterize")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _levels: NSNumber = 0
			closure!(levels: &_levels)
			filter?.setValue(_levels, forKey: "inputLevels")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func falseColor(closure: ((inout color0: CIColor, inout color1: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIFalseColor")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(color0: &_color0, color1: &_color1)
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func maskToAlpha() -> CIImage? {
		let filter = CIFilter(name: "CIMaskToAlpha")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func maximumComponent() -> CIImage? {
		let filter = CIFilter(name: "CIMaximumComponent")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func minimumComponent() -> CIImage? {
		let filter = CIFilter(name: "CIMinimumComponent")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectChrome() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectChrome")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectFade() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectFade")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectInstant() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectInstant")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectMono() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectMono")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectNoir() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectNoir")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectProcess() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectProcess")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectTonal() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectTonal")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func photoEffectTransfer() -> CIImage? {
		let filter = CIFilter(name: "CIPhotoEffectTransfer")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sepiaTone(closure: ((inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISepiaTone")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _intensity: NSNumber = 0
			closure!(intensity: &_intensity)
			filter?.setValue(_intensity, forKey: "inputIntensity")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func vignette(closure: ((inout intensity: NSNumber, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIVignette")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _intensity: NSNumber = 0
			var _radius: NSNumber = 0
			closure!(intensity: &_intensity, radius: &_radius)
			filter?.setValue(_intensity, forKey: "inputIntensity")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func vignetteEffect(closure: ((inout center: CIVector, inout radius: NSNumber, inout intensity: NSNumber, inout falloff: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIVignetteEffect")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _intensity: NSNumber = 0
			var _falloff: NSNumber = 0
			closure!(center: &_center, radius: &_radius, intensity: &_intensity, falloff: &_falloff)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_intensity, forKey: "inputIntensity")
			filter?.setValue(_falloff, forKey: "inputFalloff")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}