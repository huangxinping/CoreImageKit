import CoreImage
import CoreGraphics

public extension CIImage {
	func blendWithAlphaMask(closure: ((inout backgroundImage: CIImage, inout maskImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBlendWithAlphaMask")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			var _maskImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage, maskImage: &_maskImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
			filter?.setValue(_maskImage, forKey: "inputMaskImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func blendWithMask(closure: ((inout backgroundImage: CIImage, inout maskImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBlendWithMask")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			var _maskImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage, maskImage: &_maskImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
			filter?.setValue(_maskImage, forKey: "inputMaskImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func bloom(closure: ((inout radius: NSNumber, inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIBloom")
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

	func comicEffect() -> CIImage? {
		let filter = CIFilter(name: "CIComicEffect")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func convolution3X3(closure: ((inout weights: CIVector, inout bias: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConvolution3X3")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _weights: CIVector = CIVector()
			var _bias: NSNumber = 0
			closure!(weights: &_weights, bias: &_bias)
			filter?.setValue(_weights, forKey: "inputWeights")
			filter?.setValue(_bias, forKey: "inputBias")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func convolution5X5(closure: ((inout weights: CIVector, inout bias: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConvolution5X5")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _weights: CIVector = CIVector()
			var _bias: NSNumber = 0
			closure!(weights: &_weights, bias: &_bias)
			filter?.setValue(_weights, forKey: "inputWeights")
			filter?.setValue(_bias, forKey: "inputBias")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func convolution7X7(closure: ((inout weights: CIVector, inout bias: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConvolution7X7")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _weights: CIVector = CIVector()
			var _bias: NSNumber = 0
			closure!(weights: &_weights, bias: &_bias)
			filter?.setValue(_weights, forKey: "inputWeights")
			filter?.setValue(_bias, forKey: "inputBias")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func convolution9Horizontal(closure: ((inout weights: CIVector, inout bias: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConvolution9Horizontal")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _weights: CIVector = CIVector()
			var _bias: NSNumber = 0
			closure!(weights: &_weights, bias: &_bias)
			filter?.setValue(_weights, forKey: "inputWeights")
			filter?.setValue(_bias, forKey: "inputBias")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func convolution9Vertical(closure: ((inout weights: CIVector, inout bias: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConvolution9Vertical")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _weights: CIVector = CIVector()
			var _bias: NSNumber = 0
			closure!(weights: &_weights, bias: &_bias)
			filter?.setValue(_weights, forKey: "inputWeights")
			filter?.setValue(_bias, forKey: "inputBias")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func crystallize(closure: ((inout radius: NSNumber, inout center: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICrystallize")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			var _center: CIVector = CIVector()
			closure!(radius: &_radius, center: &_center)
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_center, forKey: "inputCenter")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func depthOfField(closure: ((inout point0: CIVector, inout point1: CIVector, inout saturation: NSNumber, inout unsharpMaskRadius: NSNumber, inout unsharpMaskIntensity: NSNumber, inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDepthOfField")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point0: CIVector = CIVector()
			var _point1: CIVector = CIVector()
			var _saturation: NSNumber = 0
			var _unsharpMaskRadius: NSNumber = 0
			var _unsharpMaskIntensity: NSNumber = 0
			var _radius: NSNumber = 0
			closure!(point0: &_point0, point1: &_point1, saturation: &_saturation, unsharpMaskRadius: &_unsharpMaskRadius, unsharpMaskIntensity: &_unsharpMaskIntensity, radius: &_radius)
			filter?.setValue(_point0, forKey: "inputPoint0")
			filter?.setValue(_point1, forKey: "inputPoint1")
			filter?.setValue(_saturation, forKey: "inputSaturation")
			filter?.setValue(_unsharpMaskRadius, forKey: "inputUnsharpMaskRadius")
			filter?.setValue(_unsharpMaskIntensity, forKey: "inputUnsharpMaskIntensity")
			filter?.setValue(_radius, forKey: "inputRadius")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func edges(closure: ((inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIEdges")
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

	func edgeWork(closure: ((inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIEdgeWork")
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

	func gloom(closure: ((inout radius: NSNumber, inout intensity: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGloom")
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

	func heightFieldFromMask(closure: ((inout radius: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHeightFieldFromMask")
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

	func hexagonalPixellate(closure: ((inout center: CIVector, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHexagonalPixellate")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _scale: NSNumber = 0
			closure!(center: &_center, scale: &_scale)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func highlightShadowAdjust(closure: ((inout radius: NSNumber, inout shadowAmount: NSNumber, inout highlightAmount: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHighlightShadowAdjust")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			var _shadowAmount: NSNumber = 0
			var _highlightAmount: NSNumber = 0
			closure!(radius: &_radius, shadowAmount: &_shadowAmount, highlightAmount: &_highlightAmount)
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_shadowAmount, forKey: "inputShadowAmount")
			filter?.setValue(_highlightAmount, forKey: "inputHighlightAmount")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func lineOverlay(closure: ((inout nRNoiseLevel: NSNumber, inout nRSharpness: NSNumber, inout edgeIntensity: NSNumber, inout threshold: NSNumber, inout contrast: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILineOverlay")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _nRNoiseLevel: NSNumber = 0
			var _nRSharpness: NSNumber = 0
			var _edgeIntensity: NSNumber = 0
			var _threshold: NSNumber = 0
			var _contrast: NSNumber = 0
			closure!(nRNoiseLevel: &_nRNoiseLevel, nRSharpness: &_nRSharpness, edgeIntensity: &_edgeIntensity, threshold: &_threshold, contrast: &_contrast)
			filter?.setValue(_nRNoiseLevel, forKey: "inputNRNoiseLevel")
			filter?.setValue(_nRSharpness, forKey: "inputNRSharpness")
			filter?.setValue(_edgeIntensity, forKey: "inputEdgeIntensity")
			filter?.setValue(_threshold, forKey: "inputThreshold")
			filter?.setValue(_contrast, forKey: "inputContrast")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pixellate(closure: ((inout center: CIVector, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPixellate")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _scale: NSNumber = 0
			closure!(center: &_center, scale: &_scale)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pointillize(closure: ((inout radius: NSNumber, inout center: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPointillize")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _radius: NSNumber = 0
			var _center: CIVector = CIVector()
			closure!(radius: &_radius, center: &_center)
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_center, forKey: "inputCenter")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func shadedMaterial(closure: ((inout shadingImage: CIImage, inout scale: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIShadedMaterial")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _shadingImage: CIImage = CIImage()
			var _scale: NSNumber = 0
			closure!(shadingImage: &_shadingImage, scale: &_scale)
			filter?.setValue(_shadingImage, forKey: "inputShadingImage")
			filter?.setValue(_scale, forKey: "inputScale")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func spotColor(closure: ((inout centerColor1: CIColor, inout replacementColor1: CIColor, inout closeness1: NSNumber, inout contrast1: NSNumber, inout centerColor2: CIColor, inout replacementColor2: CIColor, inout closeness2: NSNumber, inout contrast2: NSNumber, inout centerColor3: CIColor, inout replacementColor3: CIColor, inout closeness3: NSNumber, inout contrast3: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISpotColor")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _centerColor1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _replacementColor1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _closeness1: NSNumber = 0
			var _contrast1: NSNumber = 0
			var _centerColor2: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _replacementColor2: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _closeness2: NSNumber = 0
			var _contrast2: NSNumber = 0
			var _centerColor3: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _replacementColor3: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _closeness3: NSNumber = 0
			var _contrast3: NSNumber = 0
			closure!(centerColor1: &_centerColor1, replacementColor1: &_replacementColor1, closeness1: &_closeness1, contrast1: &_contrast1, centerColor2: &_centerColor2, replacementColor2: &_replacementColor2, closeness2: &_closeness2, contrast2: &_contrast2, centerColor3: &_centerColor3, replacementColor3: &_replacementColor3, closeness3: &_closeness3, contrast3: &_contrast3)
			filter?.setValue(_centerColor1, forKey: "inputCenterColor1")
			filter?.setValue(_replacementColor1, forKey: "inputReplacementColor1")
			filter?.setValue(_closeness1, forKey: "inputCloseness1")
			filter?.setValue(_contrast1, forKey: "inputContrast1")
			filter?.setValue(_centerColor2, forKey: "inputCenterColor2")
			filter?.setValue(_replacementColor2, forKey: "inputReplacementColor2")
			filter?.setValue(_closeness2, forKey: "inputCloseness2")
			filter?.setValue(_contrast2, forKey: "inputContrast2")
			filter?.setValue(_centerColor3, forKey: "inputCenterColor3")
			filter?.setValue(_replacementColor3, forKey: "inputReplacementColor3")
			filter?.setValue(_closeness3, forKey: "inputCloseness3")
			filter?.setValue(_contrast3, forKey: "inputContrast3")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func spotLight(closure: ((inout lightPosition: CIVector, inout lightPointsAt: CIVector, inout brightness: NSNumber, inout concentration: NSNumber, inout color: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISpotLight")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _lightPosition: CIVector = CIVector()
			var _lightPointsAt: CIVector = CIVector()
			var _brightness: NSNumber = 0
			var _concentration: NSNumber = 0
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(lightPosition: &_lightPosition, lightPointsAt: &_lightPointsAt, brightness: &_brightness, concentration: &_concentration, color: &_color)
			filter?.setValue(_lightPosition, forKey: "inputLightPosition")
			filter?.setValue(_lightPointsAt, forKey: "inputLightPointsAt")
			filter?.setValue(_brightness, forKey: "inputBrightness")
			filter?.setValue(_concentration, forKey: "inputConcentration")
			filter?.setValue(_color, forKey: "inputColor")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}