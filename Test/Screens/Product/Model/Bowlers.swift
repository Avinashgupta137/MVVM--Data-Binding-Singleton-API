/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Bowlers : Codable {
	let bowler : String?
	let overs : String?
	let maidens : String?
	let runs : String?
	let wickets : String?
	let economyrate : String?
	let noballs : String?
	let wides : String?
	let dots : String?

	enum CodingKeys: String, CodingKey {

		case bowler = "Bowler"
		case overs = "Overs"
		case maidens = "Maidens"
		case runs = "Runs"
		case wickets = "Wickets"
		case economyrate = "Economyrate"
		case noballs = "Noballs"
		case wides = "Wides"
		case dots = "Dots"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		bowler = try values.decodeIfPresent(String.self, forKey: .bowler)
		overs = try values.decodeIfPresent(String.self, forKey: .overs)
		maidens = try values.decodeIfPresent(String.self, forKey: .maidens)
		runs = try values.decodeIfPresent(String.self, forKey: .runs)
		wickets = try values.decodeIfPresent(String.self, forKey: .wickets)
		economyrate = try values.decodeIfPresent(String.self, forKey: .economyrate)
		noballs = try values.decodeIfPresent(String.self, forKey: .noballs)
		wides = try values.decodeIfPresent(String.self, forKey: .wides)
		dots = try values.decodeIfPresent(String.self, forKey: .dots)
	}

}