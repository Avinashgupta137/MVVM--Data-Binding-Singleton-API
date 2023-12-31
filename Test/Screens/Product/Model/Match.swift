/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Match : Codable {
	let livecoverage : String?
	let id : String?
	let code : String?
	let league : String?
	let number : String?
	let type : String?
	let date : String?
	let time : String?
	let offset : String?
	let daynight : String?

	enum CodingKeys: String, CodingKey {

		case livecoverage = "Livecoverage"
		case id = "Id"
		case code = "Code"
		case league = "League"
		case number = "Number"
		case type = "Type"
		case date = "Date"
		case time = "Time"
		case offset = "Offset"
		case daynight = "Daynight"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		livecoverage = try values.decodeIfPresent(String.self, forKey: .livecoverage)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		code = try values.decodeIfPresent(String.self, forKey: .code)
		league = try values.decodeIfPresent(String.self, forKey: .league)
		number = try values.decodeIfPresent(String.self, forKey: .number)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		date = try values.decodeIfPresent(String.self, forKey: .date)
		time = try values.decodeIfPresent(String.self, forKey: .time)
		offset = try values.decodeIfPresent(String.self, forKey: .offset)
		daynight = try values.decodeIfPresent(String.self, forKey: .daynight)
	}

}