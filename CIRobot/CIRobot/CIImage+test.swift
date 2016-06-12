//
//  CIImage+test.swift
//  CIRobot
//
//  Created by xinpinghuang on 16/6/12.
//  Copyright © 2016年 huangxinping. All rights reserved.
//

import Foundation
import CoreImage

extension CIImage {

	func vortexDistortion(closure: ((inout center: CIVector, inout radius: NSNumber, inout angle: NSNumber) -> Void)?) -> CIImage? {
		let filter = CIFilter(name: "CIVortexDistortion")
		print(filter?.attributes)
		filter?.setDefaults()
		if closure != nil {
			var _center: CIVector = CIVector()
			var _radius: NSNumber = 0
			var _angle: NSNumber = 0
			closure!(center: &_center, radius: &_radius, angle: &_angle)
			filter?.setValue(_center, forKey: "11")
			filter?.setValue(_radius, forKey: "11")
			filter?.setValue(_angle, forKey: "11")
		}
        filter?.setValue(self, forKey: kCIInputImageKey)
		return filter?.outputImage
	}

}
