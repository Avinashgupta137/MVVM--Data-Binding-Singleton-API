/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Innings : Codable {
	let number : String?
	let battingteam : String?
	let total : String?
	let wickets : String?
	let overs : String?
	let runrate : String?
	let byes : String?
	let legbyes : String?
	let wides : String?
	let noballs : String?
	let penalty : String?
	let allottedOvers : String?
	let batsmen : [Batsmen]?
	let partnership_Current : Partnership_Current?
	let bowlers : [Bowlers]?
	let fallofWickets : [FallofWickets]?
	let powerPlay : PowerPlay?

	enum CodingKeys: String, CodingKey {

		case number = "Number"
		case battingteam = "Battingteam"
		case total = "Total"
		case wickets = "Wickets"
		case overs = "Overs"
		case runrate = "Runrate"
		case byes = "Byes"
		case legbyes = "Legbyes"
		case wides = "Wides"
		case noballs = "Noballs"
		case penalty = "Penalty"
		case allottedOvers = "AllottedOvers"
		case batsmen = "Batsmen"
		case partnership_Current = "Partnership_Current"
		case bowlers = "Bowlers"
		case fallofWickets = "FallofWickets"
		case powerPlay = "PowerPlay"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		number = try values.decodeIfPresent(String.self, forKey: .number)
		battingteam = try values.decodeIfPresent(String.self, forKey: .battingteam)
		total = try values.decodeIfPresent(String.self, forKey: .total)
		wickets = try values.decodeIfPresent(String.self, forKey: .wickets)
		overs = try values.decodeIfPresent(String.self, forKey: .overs)
		runrate = try values.decodeIfPresent(String.self, forKey: .runrate)
		byes = try values.decodeIfPresent(String.self, forKey: .byes)
		legbyes = try values.decodeIfPresent(String.self, forKey: .legbyes)
		wides = try values.decodeIfPresent(String.self, forKey: .wides)
		noballs = try values.decodeIfPresent(String.self, forKey: .noballs)
		penalty = try values.decodeIfPresent(String.self, forKey: .penalty)
		allottedOvers = try values.decodeIfPresent(String.self, forKey: .allottedOvers)
		batsmen = try values.decodeIfPresent([Batsmen].self, forKey: .batsmen)
		partnership_Current = try values.decodeIfPresent(Partnership_Current.self, forKey: .partnership_Current)
		bowlers = try values.decodeIfPresent([Bowlers].self, forKey: .bowlers)
		fallofWickets = try values.decodeIfPresent([FallofWickets].self, forKey: .fallofWickets)
		powerPlay = try values.decodeIfPresent(PowerPlay.self, forKey: .powerPlay)
	}

}