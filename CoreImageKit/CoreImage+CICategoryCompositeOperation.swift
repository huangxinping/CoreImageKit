import CoreImage
import CoreGraphics

public extension CIImage {
	func additionCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIAdditionCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorBurnBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorBurnBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func colorDodgeBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIColorDodgeBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func darkenBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDarkenBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func differenceBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDifferenceBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func divideBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIDivideBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func exclusionBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIExclusionBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func hardLightBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHardLightBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func hueBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIHueBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func lightenBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILightenBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func linearBurnBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILinearBurnBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func linearDodgeBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILinearDodgeBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func luminosityBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CILuminosityBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func maximumCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMaximumCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func minimumCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMinimumCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func multiplyBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMultiplyBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func multiplyCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIMultiplyCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func overlayBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIOverlayBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func pinLightBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIPinLightBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func saturationBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISaturationBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func screenBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIScreenBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func softLightBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISoftLightBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sourceAtopCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISourceAtopCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sourceInCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISourceInCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sourceOutCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISourceOutCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func sourceOverCompositing(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISourceOverCompositing")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

	func subtractBlendMode(closure: ((inout backgroundImage: CIImage) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CISubtractBlendMode")
		// print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _backgroundImage: CIImage = CIImage()
			closure!(backgroundImage: &_backgroundImage)
			filter?.setValue(_backgroundImage, forKey: "inputBackgroundImage")
		}
		filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}