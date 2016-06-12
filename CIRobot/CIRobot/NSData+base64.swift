import Foundation

extension NSData
{
	func base64Encode() -> String? {
		return self.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
	}

	func toString() -> String? {
		return NSString(data: self, encoding: NSUTF8StringEncoding) as? String
	}
}

extension NSString {
	func base64Decode() -> NSData? {
		return NSData(base64EncodedString: self as String, options: NSDataBase64DecodingOptions(rawValue: 0))
	}
}

//let str = "iOS Developer Tips encoded in Base64"
//println("Original: \(str)")
//
//let utf8str = str.dataUsingEncoding(NSUTF8StringEncoding)
//
//if let base64Encoded = utf8str?.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
//{
//
//	println("Encoded:  \(base64Encoded)")
//
//	if let base64Decoded = NSData(base64EncodedString: base64Encoded, options: NSDataBase64DecodingOptions(rawValue: 0))
//		.map({ NSString(data: $0, encoding: NSUTF8StringEncoding) })
//	{
//		// Convert back to a string
//		println("Decoded:  \(base64Decoded)")
//	}
//}