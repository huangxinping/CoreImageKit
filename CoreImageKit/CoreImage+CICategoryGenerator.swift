import CoreImage
import CoreGraphics

public extension CIImage {
	func aztecCodeGenerator(closure: ((inout message: NSData, inout correctionLevel: NSNumber, inout layers: NSNumber, inout compactStyle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAztecCodeGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _message: NSData = NSData()
			var _correctionLevel: NSNumber = 0
			var _layers: NSNumber = 0
			var _compactStyle: NSNumber = 0
			closure!(message: &_message, correctionLevel: &_correctionLevel, layers: &_layers, compactStyle: &_compactStyle)
			filter?.setValue(_message, forKey: "inputMessage")
			filter?.setValue(_correctionLevel, forKey: "inputCorrectionLevel")
			filter?.setValue(_layers, forKey: "inputLayers")
			filter?.setValue(_compactStyle, forKey: "inputCompactStyle")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func checkerboardGenerator(closure: ((inout center: CIVector, inout color0: CIColor, inout color1: CIColor, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICheckerboardGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, color0: &_color0, color1: &_color1, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func code128BarcodeGenerator(closure: ((inout message: NSData, inout quietSpace: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CICode128BarcodeGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _message: NSData = NSData()
			var _quietSpace: NSNumber = 0
			closure!(message: &_message, quietSpace: &_quietSpace)
			filter?.setValue(_message, forKey: "inputMessage")
			filter?.setValue(_quietSpace, forKey: "inputQuietSpace")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func constantColorGenerator(closure: ((inout color: CIColor) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIConstantColorGenerator")
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

	func lenticularHaloGenerator(closure: ((inout center: CIVector, inout color: CIColor, inout haloRadius: NSNumber, inout haloWidth: NSNumber, inout haloOverlap: NSNumber, inout striationStrength: NSNumber, inout striationContrast: NSNumber, inout time: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILenticularHaloGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _haloRadius: NSNumber = 0
			var _haloWidth: NSNumber = 0
			var _haloOverlap: NSNumber = 0
			var _striationStrength: NSNumber = 0
			var _striationContrast: NSNumber = 0
			var _time: NSNumber = 0
			closure!(center: &_center, color: &_color, haloRadius: &_haloRadius, haloWidth: &_haloWidth, haloOverlap: &_haloOverlap, striationStrength: &_striationStrength, striationContrast: &_striationContrast, time: &_time)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_haloRadius, forKey: "inputHaloRadius")
			filter?.setValue(_haloWidth, forKey: "inputHaloWidth")
			filter?.setValue(_haloOverlap, forKey: "inputHaloOverlap")
			filter?.setValue(_striationStrength, forKey: "inputStriationStrength")
			filter?.setValue(_striationContrast, forKey: "inputStriationContrast")
			filter?.setValue(_time, forKey: "inputTime")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pDF417BarcodeGenerator(closure: ((inout message: NSData, inout minWidth: NSNumber, inout maxWidth: NSNumber, inout minHeight: NSNumber, inout maxHeight: NSNumber, inout dataColumns: NSNumber, inout rows: NSNumber, inout preferredAspectRatio: NSNumber, inout compactionMode: NSNumber, inout compactStyle: NSNumber, inout correctionLevel: NSNumber, inout alwaysSpecifyCompaction: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPDF417BarcodeGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _message: NSData = NSData()
			var _minWidth: NSNumber = 0
			var _maxWidth: NSNumber = 0
			var _minHeight: NSNumber = 0
			var _maxHeight: NSNumber = 0
			var _dataColumns: NSNumber = 0
			var _rows: NSNumber = 0
			var _preferredAspectRatio: NSNumber = 0
			var _compactionMode: NSNumber = 0
			var _compactStyle: NSNumber = 0
			var _correctionLevel: NSNumber = 0
			var _alwaysSpecifyCompaction: NSNumber = 0
			closure!(message: &_message, minWidth: &_minWidth, maxWidth: &_maxWidth, minHeight: &_minHeight, maxHeight: &_maxHeight, dataColumns: &_dataColumns, rows: &_rows, preferredAspectRatio: &_preferredAspectRatio, compactionMode: &_compactionMode, compactStyle: &_compactStyle, correctionLevel: &_correctionLevel, alwaysSpecifyCompaction: &_alwaysSpecifyCompaction)
			filter?.setValue(_message, forKey: "inputMessage")
			filter?.setValue(_minWidth, forKey: "inputMinWidth")
			filter?.setValue(_maxWidth, forKey: "inputMaxWidth")
			filter?.setValue(_minHeight, forKey: "inputMinHeight")
			filter?.setValue(_maxHeight, forKey: "inputMaxHeight")
			filter?.setValue(_dataColumns, forKey: "inputDataColumns")
			filter?.setValue(_rows, forKey: "inputRows")
			filter?.setValue(_preferredAspectRatio, forKey: "inputPreferredAspectRatio")
			filter?.setValue(_compactionMode, forKey: "inputCompactionMode")
			filter?.setValue(_compactStyle, forKey: "inputCompactStyle")
			filter?.setValue(_correctionLevel, forKey: "inputCorrectionLevel")
			filter?.setValue(_alwaysSpecifyCompaction, forKey: "inputAlwaysSpecifyCompaction")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func qRCodeGenerator(closure: ((inout message: NSData, inout correctionLevel: NSString) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIQRCodeGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _message: NSData = NSData()
			var _correctionLevel: NSString = ""
			closure!(message: &_message, correctionLevel: &_correctionLevel)
			filter?.setValue(_message, forKey: "inputMessage")
			filter?.setValue(_correctionLevel, forKey: "inputCorrectionLevel")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func randomGenerator() -> CIImage? {
		let filter = CIFilter(name: "CIRandomGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func starShineGenerator(closure: ((inout center: CIVector, inout color: CIColor, inout radius: NSNumber, inout crossScale: NSNumber, inout crossAngle: NSNumber, inout crossOpacity: NSNumber, inout crossWidth: NSNumber, inout epsilon: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIStarShineGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _radius: NSNumber = 0
			var _crossScale: NSNumber = 0
			var _crossAngle: NSNumber = 0
			var _crossOpacity: NSNumber = 0
			var _crossWidth: NSNumber = 0
			var _epsilon: NSNumber = 0
			closure!(center: &_center, color: &_color, radius: &_radius, crossScale: &_crossScale, crossAngle: &_crossAngle, crossOpacity: &_crossOpacity, crossWidth: &_crossWidth, epsilon: &_epsilon)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_radius, forKey: "inputRadius")
			filter?.setValue(_crossScale, forKey: "inputCrossScale")
			filter?.setValue(_crossAngle, forKey: "inputCrossAngle")
			filter?.setValue(_crossOpacity, forKey: "inputCrossOpacity")
			filter?.setValue(_crossWidth, forKey: "inputCrossWidth")
			filter?.setValue(_epsilon, forKey: "inputEpsilon")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func stripesGenerator(closure: ((inout center: CIVector, inout color0: CIColor, inout color1: CIColor, inout width: NSNumber, inout sharpness: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIStripesGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color0: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _color1: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _width: NSNumber = 0
			var _sharpness: NSNumber = 0
			closure!(center: &_center, color0: &_color0, color1: &_color1, width: &_width, sharpness: &_sharpness)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color0, forKey: "inputColor0")
			filter?.setValue(_color1, forKey: "inputColor1")
			filter?.setValue(_width, forKey: "inputWidth")
			filter?.setValue(_sharpness, forKey: "inputSharpness")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sunbeamsGenerator(closure: ((inout center: CIVector, inout color: CIColor, inout sunRadius: NSNumber, inout maxStriationRadius: NSNumber, inout striationStrength: NSNumber, inout striationContrast: NSNumber, inout time: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISunbeamsGenerator")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _color: CIColor = CIColor(red: 0, green: 0, blue: 0)
			var _sunRadius: NSNumber = 0
			var _maxStriationRadius: NSNumber = 0
			var _striationStrength: NSNumber = 0
			var _striationContrast: NSNumber = 0
			var _time: NSNumber = 0
			closure!(center: &_center, color: &_color, sunRadius: &_sunRadius, maxStriationRadius: &_maxStriationRadius, striationStrength: &_striationStrength, striationContrast: &_striationContrast, time: &_time)
			filter?.setValue(_center, forKey: "inputCenter")
			filter?.setValue(_color, forKey: "inputColor")
			filter?.setValue(_sunRadius, forKey: "inputSunRadius")
			filter?.setValue(_maxStriationRadius, forKey: "inputMaxStriationRadius")
			filter?.setValue(_striationStrength, forKey: "inputStriationStrength")
			filter?.setValue(_striationContrast, forKey: "inputStriationContrast")
			filter?.setValue(_time, forKey: "inputTime")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}