import CoreImage
import CoreGraphics

public extension CIImage {
	func accordionFoldTransition(closure: ((inout targetImage: CIImage, inout bottomHeight: NSNumber, inout numberOfFolds: NSNumber, inout foldShadowAmount: NSNumber, inout time: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAccordionFoldTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _bottomHeight: NSNumber = 0
			var _numberOfFolds: NSNumber = 0
			var _foldShadowAmount: NSNumber = 0
			var _time: NSNumber = 0
			closure!(targetImage: &_targetImage, bottomHeight: &_bottomHeight, numberOfFolds: &_numberOfFolds, foldShadowAmount: &_foldShadowAmount, time: &_time)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_bottomHeight, forKey: "inputBottomHeight")
			filter?.setValue(_numberOfFolds, forKey: "inputNumberOfFolds")
			filter?.setValue(_foldShadowAmount, forKey: "inputFoldShadowAmount")
			filter?.setValue(_time, forKey: "inputTime")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func barsSwipeTransition(closure: ((inout targetImage: CIImage, inout angle: NSNumber, inout width: NSNumber, inout barOffset: NSNumber, inout time: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBarsSwipeTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _barOffset: NSNumber = 0
			var _time: NSNumber = 0
			closure!(targetImage: &_targetImage, angle: &_angle, width: &_width, barOffset: &_barOffset, time: &_time)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_barOffset, forKey: "inputBarOffset")
			filter?.setValue(_time, forKey: "inputTime")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func copyMachineTransition(closure: ((inout targetImage: CIImage, inout extent: CIVector, inout color: CIColor, inout time: NSNumber, inout angle: NSNumber, inout width: NSNumber, inout opacity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICopyMachineTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _extent: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _time: NSNumber = 0
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _opacity: NSNumber = 0
			closure!(targetImage: &_targetImage, extent: &_extent, color: &_color, time: &_time, angle: &_angle, width: &_width, opacity: &_opacity)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_opacity, forKey: "inputOpacity")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func disintegrateWithMaskTransition(closure: ((inout targetImage: CIImage, inout maskImage: CIImage, inout time: NSNumber, inout shadowRadius: NSNumber, inout shadowDensity: NSNumber, inout shadowOffset: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDisintegrateWithMaskTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _maskImage: CIImage = CIImage()
			var _time: NSNumber = 0
			var _shadowRadius: NSNumber = 0
			var _shadowDensity: NSNumber = 0
			var _shadowOffset: CIVector = CIVector()
			closure!(targetImage: &_targetImage, maskImage: &_maskImage, time: &_time, shadowRadius: &_shadowRadius, shadowDensity: &_shadowDensity, shadowOffset: &_shadowOffset)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_maskImage, forKey: "inputMaskImage")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_shadowRadius, forKey: "inputShadowRadius")
			filter?.setValue(_shadowDensity, forKey: "inputShadowDensity")
			filter?.setValue(_shadowOffset, forKey: "inputShadowOffset")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func dissolveTransition(closure: ((inout targetImage: CIImage, inout time: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDissolveTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _time: NSNumber = 0
			closure!(targetImage: &_targetImage, time: &_time)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_time, forKey: "inputTime")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func flashTransition(closure: ((inout targetImage: CIImage, inout center: CIVector, inout extent: CIVector, inout color: CIColor, inout time: NSNumber, inout maxStriationRadius: NSNumber, inout striationStrength: NSNumber, inout striationContrast: NSNumber, inout fadeThreshold: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIFlashTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _center: CIVector = CIVector()
			var _extent: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _time: NSNumber = 0
			var _maxStriationRadius: NSNumber = 0
			var _striationStrength: NSNumber = 0
			var _striationContrast: NSNumber = 0
			var _fadeThreshold: NSNumber = 0
			closure!(targetImage: &_targetImage, center: &_center, extent: &_extent, color: &_color, time: &_time, maxStriationRadius: &_maxStriationRadius, striationStrength: &_striationStrength, striationContrast: &_striationContrast, fadeThreshold: &_fadeThreshold)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_maxStriationRadius, forKey: "inputMaxStriationRadius")
			filter?.setValue(_striationStrength, forKey: "inputStriationStrength")
			filter?.setValue(_striationContrast, forKey: "inputStriationContrast")
			filter?.setValue(_fadeThreshold, forKey: "inputFadeThreshold")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func modTransition(closure: ((inout targetImage: CIImage, inout center: CIVector, inout time: NSNumber, inout angle: NSNumber, inout radius: NSNumber, inout compression: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIModTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _center: CIVector = CIVector()
			var _time: NSNumber = 0
			var _angle: NSNumber = 0
			var _radius: NSNumber = 0
			var _compression: NSNumber = 0
			closure!(targetImage: &_targetImage, center: &_center, time: &_time, angle: &_angle, radius: &_radius, compression: &_compression)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_compression, forKey: "inputCompression")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pageCurlTransition(closure: ((inout targetImage: CIImage, inout backsideImage: CIImage, inout shadingImage: CIImage, inout extent: CIVector, inout time: NSNumber, inout angle: NSNumber, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPageCurlTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _backsideImage: CIImage = CIImage()
			var _shadingImage: CIImage = CIImage()
			var _extent: CIVector = CIVector()
			var _time: NSNumber = 0
			var _angle: NSNumber = 0
			var _radius: NSNumber = 0
			closure!(targetImage: &_targetImage, backsideImage: &_backsideImage, shadingImage: &_shadingImage, extent: &_extent, time: &_time, angle: &_angle, radius: &_radius)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_backsideImage, forKey: "inputBacksideImage")
			filter?.setValue(_shadingImage, forKey: "inputShadingImage")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pageCurlWithShadowTransition(closure: ((inout targetImage: CIImage, inout backsideImage: CIImage, inout extent: CIVector, inout time: NSNumber, inout angle: NSNumber, inout radius: NSNumber, inout shadowSize: NSNumber, inout shadowAmount: NSNumber, inout shadowExtent: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPageCurlWithShadowTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _backsideImage: CIImage = CIImage()
			var _extent: CIVector = CIVector()
			var _time: NSNumber = 0
			var _angle: NSNumber = 0
			var _radius: NSNumber = 0
			var _shadowSize: NSNumber = 0
			var _shadowAmount: NSNumber = 0
			var _shadowExtent: CIVector = CIVector()
			closure!(targetImage: &_targetImage, backsideImage: &_backsideImage, extent: &_extent, time: &_time, angle: &_angle, radius: &_radius, shadowSize: &_shadowSize, shadowAmount: &_shadowAmount, shadowExtent: &_shadowExtent)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_backsideImage, forKey: "inputBacksideImage")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_shadowSize, forKey: "inputShadowSize")
			filter?.setValue(_shadowAmount, forKey: "inputShadowAmount")
			filter?.setValue(_shadowExtent, forKey: "inputShadowExtent")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func rippleTransition(closure: ((inout targetImage: CIImage, inout shadingImage: CIImage, inout center: CIVector, inout extent: CIVector, inout time: NSNumber, inout width: NSNumber, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIRippleTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _shadingImage: CIImage = CIImage()
			var _center: CIVector = CIVector()
			var _extent: CIVector = CIVector()
			var _time: NSNumber = 0
			var _width: NSNumber = 0
			var _scale: NSNumber = 0
			closure!(targetImage: &_targetImage, shadingImage: &_shadingImage, center: &_center, extent: &_extent, time: &_time, width: &_width, scale: &_scale)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_shadingImage, forKey: "inputShadingImage")
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func swipeTransition(closure: ((inout targetImage: CIImage, inout extent: CIVector, inout color: CIColor, inout time: NSNumber, inout angle: NSNumber, inout width: NSNumber, inout opacity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISwipeTransition")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _targetImage: CIImage = CIImage()
			var _extent: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _time: NSNumber = 0
			var _angle: NSNumber = 0
			var _width: NSNumber = 0
			var _opacity: NSNumber = 0
			closure!(targetImage: &_targetImage, extent: &_extent, color: &_color, time: &_time, angle: &_angle, width: &_width, opacity: &_opacity)
			filter?.setValue(_targetImage, forKey: "inputTargetImage")
			filter?.setValue(_extent, forKey: "inputExtent")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_time, forKey: "inputTime")
			filter?.setValue(_angle, forKey: "inputAngle")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_opacity, forKey: "inputOpacity")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}