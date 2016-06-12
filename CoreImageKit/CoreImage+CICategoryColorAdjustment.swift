import CoreImage
import CoreGraphics

public extension CIImage {
	func colorClamp(closure: ((inout minComponents: CIVector, inout maxComponents: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorClamp")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _minComponents: CIVector = CIVector()
			var _maxComponents: CIVector = CIVector()
			closure!(minComponents: &_minComponents, maxComponents: &_maxComponents)
			filter?.setValue(_minComponents, forKey: "inputMinComponents")
			filter?.setValue(_maxComponents, forKey: "inputMaxComponents")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorControls(closure: ((inout saturation: NSNumber, inout brightness: NSNumber, inout contrast: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorControls")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _saturation: NSNumber = 0
			var _brightness: NSNumber = 0
			var _contrast: NSNumber = 0
			closure!(saturation: &_saturation, brightness: &_brightness, contrast: &_contrast)
			filter?.setValue(_saturation, forKey: "inputSaturation")
			filter?.setValue(_brightness, forKey: "inputBrightness")
			filter?.setValue(_contrast, forKey: "inputContrast")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorMatrix(closure: ((inout rVector: CIVector, inout gVector: CIVector, inout bVector: CIVector, inout aVector: CIVector, inout biasVector: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorMatrix")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _rVector: CIVector = CIVector()
			var _gVector: CIVector = CIVector()
			var _bVector: CIVector = CIVector()
			var _aVector: CIVector = CIVector()
			var _biasVector: CIVector = CIVector()
			closure!(rVector: &_rVector, gVector: &_gVector, bVector: &_bVector, aVector: &_aVector, biasVector: &_biasVector)
			filter?.setValue(_rVector, forKey: "inputRVector")
			filter?.setValue(_gVector, forKey: "inputGVector")
			filter?.setValue(_bVector, forKey: "inputBVector")
			filter?.setValue(_aVector, forKey: "inputAVector")
			filter?.setValue(_biasVector, forKey: "inputBiasVector")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorPolynomial(closure: ((inout redCoefficients: CIVector, inout greenCoefficients: CIVector, inout blueCoefficients: CIVector, inout alphaCoefficients: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorPolynomial")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _redCoefficients: CIVector = CIVector()
			var _greenCoefficients: CIVector = CIVector()
			var _blueCoefficients: CIVector = CIVector()
			var _alphaCoefficients: CIVector = CIVector()
			closure!(redCoefficients: &_redCoefficients, greenCoefficients: &_greenCoefficients, blueCoefficients: &_blueCoefficients, alphaCoefficients: &_alphaCoefficients)
			filter?.setValue(_redCoefficients, forKey: "inputRedCoefficients")
			filter?.setValue(_greenCoefficients, forKey: "inputGreenCoefficients")
			filter?.setValue(_blueCoefficients, forKey: "inputBlueCoefficients")
			filter?.setValue(_alphaCoefficients, forKey: "inputAlphaCoefficients")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func exposureAdjust(closure: ((inout eV: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIExposureAdjust")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _eV: NSNumber = 0
			closure!(eV: &_eV)
			filter?.setValue(_eV, forKey: "inputEV")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func gammaAdjust(closure: ((inout power: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIGammaAdjust")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _power: NSNumber = 0
			closure!(power: &_power)
			filter?.setValue(_power, forKey: "inputPower")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func hueAdjust(closure: ((inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHueAdjust")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _angle: NSNumber = 0
			closure!(angle: &_angle)
			filter?.setValue(_angle, forKey: "inputAngle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func linearToSRGBToneCurve() -> CIImage? {
		let filter = CIFilter(name: "CILinearToSRGBToneCurve")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sRGBToneCurveToLinear() -> CIImage? {
		let filter = CIFilter(name: "CISRGBToneCurveToLinear")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func temperatureAndTint(closure: ((inout neutral: CIVector, inout targetNeutral: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CITemperatureAndTint")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _neutral: CIVector = CIVector()
			var _targetNeutral: CIVector = CIVector()
			closure!(neutral: &_neutral, targetNeutral: &_targetNeutral)
			filter?.setValue(_neutral, forKey: "inputNeutral")
			filter?.setValue(_targetNeutral, forKey: "inputTargetNeutral")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func toneCurve(closure: ((inout point0: CIVector, inout point1: CIVector, inout point2: CIVector, inout point3: CIVector, inout point4: CIVector) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIToneCurve")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _point0: CIVector = CIVector()
			var _point1: CIVector = CIVector()
			var _point2: CIVector = CIVector()
			var _point3: CIVector = CIVector()
			var _point4: CIVector = CIVector()
			closure!(point0: &_point0, point1: &_point1, point2: &_point2, point3: &_point3, point4: &_point4)
			filter?.setValue(_point0, forKey: "inputPoint0")
			filter?.setValue(_point1, forKey: "inputPoint1")
			filter?.setValue(_point2, forKey: "inputPoint2")
			filter?.setValue(_point3, forKey: "inputPoint3")
			filter?.setValue(_point4, forKey: "inputPoint4")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func vibrance(closure: ((inout amount: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIVibrance")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _amount: NSNumber = 0
			closure!(amount: &_amount)
			filter?.setValue(_amount, forKey: "inputAmount")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func whitePointAdjust(closure: ((inout color: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIWhitePointAdjust")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			closure!(color: &_color)
			filter?.setValue(_color, forKey: "inputColor")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}