//
//  Builder.swift
//  CIRobot
//
//  Created by xinpinghuang on 16/6/12.
//  Copyright © 2016年 huangxinping. All rights reserved.
//

import Foundation
import CoreImage

struct FilterAttribute {
	let classType: String
	let defaultValue: Any?
	let detail: String?
	let displayName: String?
	let identity: Any?
	let sliderMax: Any?
	let sliderMin: Any?
	let type: String?
}

extension CIFilter {
	func detailForInputKey(key: String) -> FilterAttribute {
		var classType = self.attributes[key]!["CIAttributeClass"]
		let defaultValue = self.attributes[key]!["CIAttributeDefault"]
		let minValue = self.attributes[key]!["CIAttributeSliderMin"]
		let maxValue = self.attributes[key]!["CIAttributeSliderMax"]
		if (classType as? String) == "NSAffineTransform" {
			classType = "CGAffineTransform"
		}
		return FilterAttribute(classType: classType as! String, defaultValue: defaultValue, detail: nil, displayName: nil, identity: nil, sliderMax: maxValue, sliderMin: minValue, type: nil)
	}
}

extension CIImage {
	class func filterNames(category: XPCICategory) -> [String] {
		return CIFilter.filterNamesInCategory(category.description)
	}
}

extension String
{
	func replace(target: String, withString: String) -> String
	{
		return self.stringByReplacingOccurrencesOfString(target, withString: withString, options: NSStringCompareOptions.LiteralSearch, range: nil)
	}
}

enum XPCICategory: CustomStringConvertible {
	case XPCICategoryDistortionEffect,
		XPCICategoryGeometryAdjustment,
		XPCICategoryCompositeOperation,
		XPCICategoryHalftoneEffect,
		XPCICategoryColorAdjustment,
		XPCICategoryColorEffect,
		XPCICategoryTransition,
		XPCICategoryTileEffect,
		XPCICategoryGenerator,
		XPCICategoryReduction,
		XPCICategoryGradient,
		XPCICategoryStylize,
		XPCICategorySharpen,
		XPCICategoryBlur,
		XPCICategoryVideo,
		XPCICategoryStillImage,
		XPCICategoryInterlaced,
		XPCICategoryNonSquarePixels,
		XPCICategoryHighDynamicRange,
		XPCICategoryBuiltIn,
		XPCICategoryFilterGenerator
	var description: String {
		switch self {
		case .XPCICategoryDistortionEffect:
			return kCICategoryDistortionEffect
		case .XPCICategoryGeometryAdjustment:
			return kCICategoryGeometryAdjustment
		case .XPCICategoryCompositeOperation:
			return kCICategoryCompositeOperation
		case .XPCICategoryHalftoneEffect:
			return kCICategoryHalftoneEffect
		case .XPCICategoryColorAdjustment:
			return kCICategoryColorAdjustment
		case .XPCICategoryColorEffect:
			return kCICategoryColorEffect
		case .XPCICategoryTransition:
			return kCICategoryTransition
		case .XPCICategoryTileEffect:
			return kCICategoryTileEffect
		case .XPCICategoryGenerator:
			return kCICategoryGenerator
		case .XPCICategoryReduction:
			return kCICategoryReduction
		case .XPCICategoryGradient:
			return kCICategoryGradient
		case .XPCICategoryStylize:
			return kCICategoryStylize
		case .XPCICategorySharpen:
			return kCICategorySharpen
		case .XPCICategoryBlur:
			return kCICategoryBlur
		case .XPCICategoryVideo:
			return kCICategoryVideo
		case .XPCICategoryStillImage:
			return kCICategoryStillImage
		case .XPCICategoryInterlaced:
			return kCICategoryInterlaced
		case .XPCICategoryNonSquarePixels:
			return kCICategoryNonSquarePixels
		case .XPCICategoryHighDynamicRange:
			return kCICategoryHighDynamicRange
		case .XPCICategoryBuiltIn:
			return kCICategoryBuiltIn
		case .XPCICategoryFilterGenerator:
			return kCICategoryFilterGenerator
		}
	}
}

extension XPCICategory {
	subscript(index: Int) -> String {
		switch index {
		case 0:
			return kCICategoryDistortionEffect
		case 1:
			return kCICategoryGeometryAdjustment
		case 2:
			return kCICategoryCompositeOperation
		case 3:
			return kCICategoryHalftoneEffect
		case 4:
			return kCICategoryColorAdjustment
		case 5:
			return kCICategoryColorEffect
		case 6:
			return kCICategoryTransition
		case 7:
			return kCICategoryTileEffect
		case 8:
			return kCICategoryGenerator
		case 9:
			return kCICategoryReduction
		case 10:
			return kCICategoryGradient
		case 11:
			return kCICategoryStylize
		case 12:
			return kCICategorySharpen
		case 13:
			return kCICategoryBlur
		case 14:
			return kCICategoryVideo
		case 15:
			return kCICategoryStillImage
		case 16:
			return kCICategoryInterlaced
		case 17:
			return kCICategoryNonSquarePixels
		case 18:
			return kCICategoryHighDynamicRange
		case 19:
			return kCICategoryBuiltIn
		case 20:
			return kCICategoryFilterGenerator
		default:
			return kCICategoryFilterGenerator
		}
	}
}

class CoreImageBuilder {
	var filterName: String = ""
	private var functionName: String {
		get {
			var name = filterName.replace("CI", withString: "")
			name = name.substringToIndex(name.startIndex.advancedBy(1)).lowercaseString + name.substringFromIndex(name.startIndex.advancedBy(1))
			return name
		}
	}
	var pamameters: [String] = [String]()

	private func appendDefaultValueToParameter(string: String) -> String {
		let type = string.componentsSeparatedByString(":")[1]
		switch type {
		case " CIVector":
			return string + " = CIVector()"
		case " NSNumber":
			return string + " = 0"
		case " CGAffineTransform":
			return string + " = CGAffineTransformIdentity"
		case " CIImage":
			return string + " = CIImage()"
		case " CIColor":
			return string + " = CIColor(red: 0, green: 0, blue: 0)"
		case " NSData":
			return string + " = NSData()"
		case " NSString":
			return string + " = \"\""
		case " NSObject":
			return string + " = NSObject()"
		default:
			return string
		}
	}

	func description() -> String {
		var output = "func \(functionName)("
		repeat { // 生成参数
			if pamameters.count > 0 {
				output += "closure: (("
				output += pamameters.joinWithSeparator(",")
				output += ") -> Void)?"
			}
		} while 0 > 1
		output += ") -> CIImage? {\n"
		repeat { // 生成函数体
			output += "    let filter = CIFilter(name: \"\(filterName)\")"
			output += "\n    //print(filter?.attributes)\n    filter?.setDefaults()"
			if pamameters.count > 0 {
				output += "\n    if closure != nil {"
				repeat { // 生成closure设置参数
					for var pamameter in pamameters {
						pamameter = pamameter.replace("inout ", withString: "var _")
						output += "\n      " + self.appendDefaultValueToParameter(pamameter)
					}
					let closure = pamameters.map({ value -> String in
						var buffer = value.replace("inout ", withString: "")
						buffer = buffer.componentsSeparatedByString(":")[0]
						return "\(buffer): &_\(buffer)"
					})
					output += "\n      closure!(\(closure.joinWithSeparator(",")))"
				} while false
				repeat { // 生成closure设置值
					for var pamameter: String in pamameters {
						pamameter = pamameter.componentsSeparatedByString(":")[0]
						pamameter = pamameter.replace("inout ", withString: "")
						let value = "_" + pamameter
						let key = "input" + pamameter.substringToIndex(pamameter.startIndex.advancedBy(1)).uppercaseString + pamameter.substringFromIndex(pamameter.startIndex.advancedBy(1))
						if key == "inputTransform" {
							output += "\n      filter?.setValue(NSValue(CGAffineTransform: \(value)), forKey: \"\(key)\")"
						} else {
							output += "\n      filter?.setValue(\(value), forKey: \"\(key)\")"
						}
					}
				} while false
				output += "\n    }"
			}
		} while false
		output += "\n    filter?.setValue(self, forKey: kCIInputImageKey)"
		output += "\n    return filter?.outputImage\n}\n"
		return output
	}
}

class CoreImageRobot {

	static let categorys = [XPCICategory.XPCICategoryDistortionEffect,
		XPCICategory.XPCICategoryGeometryAdjustment,
		XPCICategory.XPCICategoryCompositeOperation,
		XPCICategory.XPCICategoryHalftoneEffect,
		XPCICategory.XPCICategoryColorAdjustment,
		XPCICategory.XPCICategoryColorEffect,
		XPCICategory.XPCICategoryTransition,
		XPCICategory.XPCICategoryTileEffect,
		XPCICategory.XPCICategoryGenerator,
		XPCICategory.XPCICategoryReduction,
		XPCICategory.XPCICategoryGradient,
		XPCICategory.XPCICategoryStylize,
		XPCICategory.XPCICategorySharpen,
		XPCICategory.XPCICategoryBlur,
		XPCICategory.XPCICategoryVideo,
		XPCICategory.XPCICategoryStillImage,
		XPCICategory.XPCICategoryInterlaced,
		XPCICategory.XPCICategoryNonSquarePixels,
		XPCICategory.XPCICategoryHighDynamicRange,
		XPCICategory.XPCICategoryBuiltIn,
		XPCICategory.XPCICategoryFilterGenerator]

	class func robot(writeToFile: Bool = false, filterSame: Bool = true) {
		var appendedFilter = [String]()
		for category in categorys {
			let names = CIImage.filterNames(category)
			var buffer = ""
			for name in names {
				let filter = CIFilter(name: name)
				guard (filter != nil) else { continue }

				if filterSame { // 如果需要过滤掉已经扫描过的filter
					var continueSame = false
					for appended in appendedFilter {
						if appended == name {
							continueSame = true
						}
					}
					if continueSame {
						continue
					}
					appendedFilter.append(name)
				}

				let builder = CoreImageBuilder()
				builder.filterName = name
				repeat {
					let inputKeys = filter?.inputKeys
					for i in 0 ..< inputKeys!.count {
						let inputKey = inputKeys![i]
						// 参数名称
						var parameterKey = inputKey.replace("input", withString: "")
						parameterKey = parameterKey.substringToIndex(parameterKey.startIndex.advancedBy(1)).lowercaseString + parameterKey.substringFromIndex(parameterKey.startIndex.advancedBy(1))

						if inputKeys![i] == "inputImage" {
							continue
						}
						// 参数类型
						let type = (filter?.detailForInputKey(inputKey).classType)!
						builder.pamameters.append("inout " + parameterKey + ": " + type)
					}
				} while 0 > 1
//				print(builder.description())
                print(builder.functionName)
				if writeToFile {
					buffer += builder.description() + "\n"
				}
			}
			if writeToFile {
				CoreImageRobot.writeToFile("CoreImage+\(category.description).swift", buffer)
			}
		}
	}

	private class func writeToFile(fileName: String, _ buffer: String) {
		do {
			let path = NSHomeDirectory() + "/Downloads/" + fileName
			let createFile = "import CoreImage\nimport CoreGraphics\n\npublic extension CIImage {\n"
			try createFile.writeToFile(path, atomically: true, encoding: NSUTF8StringEncoding)
			let fileHandle = NSFileHandle(forWritingAtPath: path)
			fileHandle?.seekToEndOfFile()
			let result = buffer + "}"
			fileHandle?.writeData(result.dataUsingEncoding(NSUTF8StringEncoding)!)
		} catch _ {

		}
	}
}