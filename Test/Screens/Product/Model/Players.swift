/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Players : Codable {
	let 3752 : 3752?
	let 4330 : 4330?
	let 4338 : 4338?
	let 4964 : 4964?
	let 10167 : 10167?
	let 10172 : 10172?
	let 11703 : 11703?
	let 11706 : 11706?
	let 57594 : 57594?
	let 57903 : 57903?
	let 60544 : 60544?

	enum CodingKeys: String, CodingKey {

		case 3752 = "3752"
		case 4330 = "4330"
		case 4338 = "4338"
		case 4964 = "4964"
		case 10167 = "10167"
		case 10172 = "10172"
		case 11703 = "11703"
		case 11706 = "11706"
		case 57594 = "57594"
		case 57903 = "57903"
		case 60544 = "60544"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		3752 = try values.decodeIfPresent(3752.self, forKey: .3752)
		4330 = try values.decodeIfPresent(4330.self, forKey: .4330)
		4338 = try values.decodeIfPresent(4338.self, forKey: .4338)
		4964 = try values.decodeIfPresent(4964.self, forKey: .4964)
		10167 = try values.decodeIfPresent(10167.self, forKey: .10167)
		10172 = try values.decodeIfPresent(10172.self, forKey: .10172)
		11703 = try values.decodeIfPresent(11703.self, forKey: .11703)
		11706 = try values.decodeIfPresent(11706.self, forKey: .11706)
		57594 = try values.decodeIfPresent(57594.self, forKey: .57594)
		57903 = try values.decodeIfPresent(57903.self, forKey: .57903)
		60544 = try values.decodeIfPresent(60544.self, forKey: .60544)
	}

}