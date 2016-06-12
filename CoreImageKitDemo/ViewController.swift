//
//  ViewController.swift
//  CoreImageKitDemo
//
//  Created by xinpinghuang on 16/6/8.
//  Copyright © 2016年 huangxinping. All rights reserved.
//

import UIKit
import CoreImageKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	let filter = [
		"none",
		"boxBlur",
		"gaussianBlur",
		"sepiaTone",
		"colorInvert",
		"complex filter"
	]
	let originImage = UIImage(named: "origin")
	var disposeImages = [UIImage]()
	var useFilterImage = false

	@IBOutlet weak var activityView: UIActivityIndicatorView!

	override func viewDidLoad() {
		super.viewDidLoad()
		activityView.stopAnimating()
	}

	@IBAction func disposeButtonTaped(sender: AnyObject) {
		activityView.startAnimating()
		let ciimage = CIImage(image: originImage!)
		dispatch_async(dispatch_get_global_queue(0, 0)) {

			let boxBlurImage = ciimage?.boxBlur({ (radius) in
				radius = 70
			})?.toUIImage
			self.disposeImages.append(boxBlurImage!)

			let gaussianBlurImage = ciimage?.gaussianBlur({ (radius) in
				radius = 20
			})?.toUIImage
			self.disposeImages.append(gaussianBlurImage!)

			let sepiaToneImage = ciimage?.sepiaTone({ (intensity) in
				intensity = 0.5
			})?.toUIImage
			self.disposeImages.append(sepiaToneImage!)

			let colorInvert = ciimage?.colorInvert()?.toUIImage
			self.disposeImages.append(colorInvert!)

			let complex = ciimage?.boxBlur({ (radius) in
				radius = 70
			})?.sepiaTone({ (intensity) in
				intensity = 0.5
			})?.toUIImage
			self.disposeImages.append(complex!)

			dispatch_async(dispatch_get_main_queue(), {
				self.useFilterImage = true
				self.tableView.reloadData()
				self.activityView.stopAnimating()
			})
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
}

extension ViewController: UITableViewDelegate {

}

extension ViewController: UITableViewDataSource {

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return filter.count
	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
		cell?.textLabel?.text = filter[indexPath.row]

		if useFilterImage {
			switch indexPath.row {
			case 0:
				cell?.imageView?.image = UIImage(named: "origin")
			default:
				cell?.imageView?.image = self.disposeImages[indexPath.row - 1]
			}
		}
		return cell!
	}

}

